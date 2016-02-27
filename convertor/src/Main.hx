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
		processGroup("var",			"php.VarNatives", 		[]);
		processGroup("array",		"php.ArrayNatives", 	[]);
		processGroup("imap",		"php.ImapNatives", 		[ "import php.imap.*" ]);
		processGroup("datetime",	"php.DatetimeNatives", 	[]);
		processGroup("info",		"php.InfoNatives", 		[]);
		processGroup("strings",		"php.StringsNatives", 	[]);
		processGroup("mbstring",	"php.MbstringNatives", 	[]);
		processGroup("pcre",		"php.PcreNatives", 		[]);
		processGroup("iconv",		"php.IconvNatives", 	[]);
		processGroup("math",		"php.MathNatives", 		[]);
		processGroup("url",			"php.UrlNatives", 		[]);
		processGroup("filesystem", 	"php.FilesystemNatives",[]);
		processGroup("outcontrol", 	"php.OutcontrolNatives",[]);
		processGroup("misc",		"php.MiscNatives", 		[]);
	}
	
	static function processGroup(group:String, packageAndClass:String, imports:Array<String>)
	{
		Log.start("Process " + group);
		
		var methods = [];
		
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