import hant.Log;
import haxe.io.Path;
import stdlib.Regex;
import sys.FileSystem;
import sys.io.File;
import tjson.TJSON;
using stdlib.Lambda;
using StringTools;

typedef Element =
{
    var name: String;
    var parameters: String;
    var prototype: String;
    var ret: String;
}

class Main
{
	static var groups = [ "array", "var", "imap"  ];
	
	static var reID = "[a-zA-Z_][a-zA-Z0-9_]*";
	static var reNameAndType = "\\s*" + reID + "\\s*[:]\\s*" + reID + "\\s*";
	static var reArgsStr = "[(]" + reNameAndType + "(?:,\\s*" + reNameAndType + ")*[)]";
	
	static function main()
	{
		processGroups(["var"], "php.VarNatives", []);
		processGroups(["array"], "php.ArrayNatives", []);
		processGroups(["imap"], "php.ImapNatives", [ "import php.imap.*" ]);
		processGroups(["datetime"], "php.DatetimeNatives", []);
		processGroups(["info"], "php.InfoNatives", []);
		processGroups(["strings"], "php.StringsNatives", []);
		processGroups(["mbstring"], "php.MbstringNatives", []);
		processGroups(["pcre"], "php.PcreNatives", []);
		processGroups(["iconv"], "php.IconvNatives", []);
		processGroups(["math"], "php.MathNatives", []);
		processGroups(["url"], "php.UrlNatives", []);
		processGroups(["filesystem"], "php.FilesystemNatives", []);
		processGroups(["outcontrol"], "php.OutcontrolNatives", []);
	}
	
	static function processGroups(groups:Array<String>, packageAndClass:String, imports:Array<String>)
	{
		var methods = [];
		
		for (group in groups)
		{
			Log.start("Process " + group);
			
			if (methods.length > 0) methods.push("");
			
			methods.push("//{ " + group);
			methods.push("");
			
			var text = File.getContent("bin/" + group + ".json");
			var elements : Array<Element> = TJSON.parse(text);
			for (element in elements)
			{
				if (element.prototype != null)
				{
					Log.start("Convert " + element.name);
					File.saveContent("bin/temp.php", element.prototype);
					Sys.command("haxelib", [ "run", "refactor", "convertFile", "bin/temp.php", "bin/temp.hx", "c-like_php_to_haxe.rules" ]);
					methods = methods.concat(processMethod(File.getContent("bin/temp.hx").split("\n")));
					Log.finishSuccess();
				}
			}
			
			methods.push("");
			methods.push("//}");
			
			Log.finishSuccess();
		}
		
		FileSystem.deleteFile("bin/temp.php");
		FileSystem.deleteFile("bin/temp.hx");
		
		File.saveContent
		(
			"../library/" + packageAndClass.replace(".", "/") + ".hx",
			"package " + Path.directory(packageAndClass.replace(".", "/")).replace("/", ".") + ";\n"
		  + "\n"
		  + imports.map.fn(_ + ";\n").join("") + (imports.length > 0 ? "\n" : "")
		  + "class " + Path.withoutDirectory(packageAndClass.replace(".", "/")) + "\n"
		  + "{\n"
		  + methods.map.fn("\t" + _ + "\n").join("")
		  + "}\n"
		);
	}
	
	static function processMethod(method:Array<String>) : Array<String>
	{
		if (method.length != 2) return method;
		
		method[0] = ~/[:]callable/.map(method[0], function(re)
		{
			var types = [];
			new EReg("[:]\\s*(" + reID + ")", "g").map(method[1], function(re)
			{
				types.push(re.matched(1));
				return re.matched(0);
			});
			return ":" + types.join("->");
		});
		
		return [ method[0] ];
	}
}