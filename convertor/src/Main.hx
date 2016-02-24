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
		var methods = [];
		
		for (group in groups)
		{
			if (methods.length > 0) methods.push("");
			
			methods.push("//{ " + group);
			methods.push("");
			
			var text = File.getContent("bin/" + group + ".json");
			var elements : Array<Element> = TJSON.parse(text);
			for (element in elements)
			{
				if (element.prototype != null)
				{
					File.saveContent("bin/temp.php", element.prototype);
					Sys.command("php2haxe", ["methods", "bin/temp.php"]);
					methods = methods.concat(processMethod(File.getContent("bin/temp.hx").split("\n")));
				}
			}
			
			methods.push("");
			methods.push("//}");
		}
		
		FileSystem.deleteFile("bin/temp.php");
		FileSystem.deleteFile("bin/temp.hx");
		
		File.saveContent
		(
			"../library/php/Native.hx",
			"package php;\n"
		  + "\n"
		  + "import php.NativeArray;\n"
		  + "\n"
		  + "class Native\n"
		  + "{\n"
		  + methods.map.fn("\t" + _ + "\n").join("")
		  + "}\n"
		);
	}
	
	static function processMethod(method:Array<String>) : Array<String>
	{
		if (method.length != 2) return method;
		
		//var reArgs = new EReg(reArgsStr, "");
		
		method[0] = ~/[:]callable/.map(method[0], function(re)
		{
			//if (reArgs.match(method[1]))
			{
				var types = [];
				new EReg("[:]\\s*(" + reID + ")", "g").map(method[1], function(re)
				{
					types.push(re.matched(1));
					return re.matched(0);
				});
				return ":" + types.join("->");
			}
			//return re.matched(0);
		});
		
		return [ method[0] ];
	}
}