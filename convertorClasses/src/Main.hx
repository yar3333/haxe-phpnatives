import hant.Log;
import haxe.io.Path;
import htmlparser.HtmlDocument;
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
	static function main()
	{
		var args = Sys.args();
		
		if (args.length >= 3 && args.length <= 4)
		{
			processClasses
			(
				args[0],
				args[1],
				Path.removeTrailingSlashes(args[2]),
				args.length > 3 ? args[3].rtrim(";").split(";") : []
			);
		}
		else
		{
			Sys.println("Arguments: <jsonFile> <outPackage> <outDir> [ <imports> ]");
		}
		
	}
	
	static function processClasses(jsonFile:String, pack:String, outDir:String, imports:Array<String>)
	{
		Log.start("Process " + jsonFile);
		
		var methods = [];
		
		var text = File.getContent(jsonFile);
		var elements : Array<Element> = TJSON.parse(text);
		for (element in elements)
		{
			if (element.name != null && element.body != null)
			{
				var name = element.name.replace("The ", "").replace(" class", "").trim();
				var isInterface = name.indexOf(" interface") >= 0;
				if (isInterface) name = name.replace(" interface", "");
				processClass(isInterface, pack, name, element.body, outDir, imports);
			}
		}
		
		FileSystem.deleteFile("temp.php");
		FileSystem.deleteFile("temp.hx");
		
		Log.finishSuccess();
	}
	
	static function processClass(isInterface:Bool, pack:String, klass:String, body:String, outDir:String, imports:Array<String>)
	{
		Log.start("Convert " + klass);
		
		var doc = new HtmlDocument("<root>" + body + "</root>", true);
		
		var reTitle = new Regex("/\\s+/ /g");
		var title = reTitle.replace(doc.find(">root>.classsynopsisinfo")[0].innerText.trim());
		
		var fields = doc.find(">root>.fieldsynopsis").map.fn(_.innerText.replace("\n", " "));
		File.saveContent("temp.php", fields.join("\n").trim());
		Sys.command("haxelib", [ "run", "refactor", "convertFile", "temp.php", "temp.hx", "c-like_php_fields_to_haxe.rules" ]);
		fields = File.getContent("temp.hx").split("\n");
		
		var methods = doc.find(">root>.constructorsynopsis, >root>.methodsynopsis").map.fn(_.innerText.replace("\n", " "));
		File.saveContent("temp.php", methods.join("\n").trim());
		Sys.command("haxelib", [ "run", "refactor", "convertFile", "temp.php", "temp.hx", "c-like_php_methods_to_haxe.rules" ]);
		methods = File.getContent("temp.hx").split("\n");
		
		var dir = outDir + "/" + pack.replace(".", "/");
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