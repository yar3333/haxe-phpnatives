import hant.Log;
import htmlparser.HtmlDocument;
import htmlparser.HtmlParser;
import stdlib.Regex;
import sys.FileSystem;
import sys.io.File;
import tjson.TJSON;
using stdlib.Lambda;
using stdlib.StringTools;

typedef Element =
{
    var name: String;
    var body: String;
}

class Main
{
	static var groups = [ "array", "var", "imap"  ];
	
	static var reID = "[a-zA-Z_][a-zA-Z0-9_]*";
	static var reNameAndType = "\\s*" + reID + "\\s*[:]\\s*" + reID + "\\s*";
	static var reArgsStr = "[(]" + reNameAndType + "(?:,\\s*" + reNameAndType + ")*[)]";
	
	static function main()
	{
		processClasses("calendar", "php.calendar", []);
	}
	
	static function processClasses(group:String, pack:String, imports:Array<String>)
	{
		Log.start("Process " + group);
		
		var methods = [];
		
		var text = File.getContent("bin/" + group + ".json");
		var elements : Array<Element> = TJSON.parse(text);
		for (element in elements)
		{
			if (element.name != null && element.body != null)
			{
				var name = element.name.replace("The ", "").replace(" class", "").trim();
				var isInterface = name.indexOf(" interface") >= 0;
				if (isInterface) name = name.replace(" interface", "");
				processClass(isInterface, pack, name, element.body, imports);
			}
		}
		
		FileSystem.deleteFile("bin/temp.php");
		FileSystem.deleteFile("bin/temp.hx");
		
		Log.finishSuccess();
	}
	
	static function processClass(isInterface:Bool, pack:String, klass:String, body:String, imports:Array<String>)
	{
		Log.start("Convert " + klass);
		
		var doc = new HtmlDocument("<root>" + body + "</root>", true);
		
		var reTitle = new Regex("/\\s+/ /g");
		var title = reTitle.replace(doc.find(">root>.classsynopsisinfo")[0].innerText.trim());
		
		var fields = doc.find(">root>.fieldsynopsis").map.fn(_.innerText.replace("\n", " "));
		File.saveContent("bin/temp.php", fields.join("\n").trim());
		Sys.command("haxelib", [ "run", "refactor", "convertFile", "bin/temp.php", "bin/temp.hx", "c-like_php_fields_to_haxe.rules" ]);
		fields = File.getContent("bin/temp.hx").split("\n");
		
		var methods = doc.find(">root>.constructorsynopsis, >root>.methodsynopsis").map.fn(_.innerText.replace("\n", " "));
		File.saveContent("bin/temp.php", methods.join("\n").trim());
		Sys.command("haxelib", [ "run", "refactor", "convertFile", "bin/temp.php", "bin/temp.hx", "c-like_php_methods_to_haxe.rules" ]);
		methods = File.getContent("bin/temp.hx").split("\n");
		
		var dir = "../library/" + pack.replace(".", "/");
		FileSystem.createDirectory(dir);
		
		var fieldsStr = fields.map.fn(_ + "\n").join("").trim();
		var methodsStr = methods.map.fn(_ + "\n").join("").trim();
		
		File.saveContent
		(
			dir + "/" + klass + ".hx",
			"package " + pack + ";\n"
			+ "\n"
			+ imports.map.fn(_ + ";\n").join("") + (imports.length > 0 ? "\n" : "")
			+ "@:native(\"" + klass + "\")\n"
			+ "extern " + (isInterface ? "interface" : "class") + " " + title.rtrim(" \t\r\n{") + "\n"
			+ "{\n"
			+ (fieldsStr != "" ? "\t" + fieldsStr + "\n" : "")
			+ (fieldsStr.length > 0 && methodsStr.length > 0 ? "\n" : "")
			+ (methodsStr != "" ? "\t" + methodsStr + "\n" : "")
			+ "}\n"
		);
		
		Log.finishSuccess();
		
		Sys.command("haxelib", [ "run", "refactor", "override", dir ]);
	}
	
	static function processLine(line:String) : String
	{
		return line;
	}
}