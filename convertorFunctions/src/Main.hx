import hant.Log;
import haxe.io.Path;
import stdlib.Regex;
import sys.FileSystem;
import sys.io.File;
import tjson.TJSON;
using stdlib.Lambda;
using stdlib.StringTools;

typedef Element =
{
    var name: String;
    var parameters: String;
    var prototype: String;
    var ret: String;
}

class Main
{
	static var reID = "[a-zA-Z_][a-zA-Z0-9_]*";
	static var reNameAndType = "\\s*" + reID + "\\s*[:]\\s*" + reID + "\\s*";
	static var reArgsStr = "[(]" + reNameAndType + "(?:,\\s*" + reNameAndType + ")*[)]";
	
	static function main()
	{
		var args = Sys.args();
		
		if (args.length >= 3 && args.length <= 4)
		{
			processFunctions
			(
				args[0],
				args[1],
				Path.removeTrailingSlashes(args[2]),
				args.length > 3 ? args[3].rtrim(";").split(";") : []
			);
		}
		else
		{
			Sys.println("Arguments: <jsonFile> <outClassName> <outDir> [ <imports> ]");
		}
	}
	
	static function processFunctions(jsonFile:String, packageAndClass:String, outDir:String, imports:Array<String>)
	{
		Log.start("Process " + jsonFile);
		
		var methods = [];
		
		var text = File.getContent(jsonFile);
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
		
		FileSystem.deleteFile("bin/temp.php");
		FileSystem.deleteFile("bin/temp.hx");
		
		File.saveContent
		(
			outDir + "/" + packageAndClass.replace(".", "/") + ".hx",
			"package " + Path.directory(packageAndClass.replace(".", "/")).replace("/", ".") + ";\n"
		  + "\n"
		  + imports.map.fn(_ + ";\n").join("") + (imports.length > 0 ? "\n" : "")
		  + "class " + Path.withoutDirectory(packageAndClass.replace(".", "/")) + "\n"
		  + "{\n"
		  + methods.map.fn("\t" + _ + "\n").join("")
		  + "}\n"
		);
		
		Log.finishSuccess();
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