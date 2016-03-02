import hant.Log;
import haxe.io.Path;
import stdlib.Debug;
import stdlib.Regex;
import sys.FileSystem;
import sys.io.File;
using stdlib.Lambda;
using StringTools;

typedef Param = { name:String, type:String, value:String, optional:Bool };

class Main
{
	static var reID = "[a-zA-Z_][a-zA-Z0-9_]*";
	static var reNameAndType = "\\s*" + reID + "\\s*[:]\\s*" + reID + "\\s*";
	static var reArgsStr = "[(]" + reNameAndType + "(?:,\\s*" + reNameAndType + ")*[)]";
	static var reType = reID + "(?:[<]\\s*" + reID + "(?:\\s*,\\s*" + reID + ")*\\s*[>])?";
	
	//                       1     2                 3              4
	static var reParam = '([?]?)($reID)\\s*(?:[:]\\s*($reType))?(?:\\s*[=]\\s*([^,]+))?';
	
	static function main()
	{
		var args = Sys.args();
		
		if (args.length == 1)
		{
			var filePath = args[0];
			var lines = File.getContent(filePath).replace("\r\n", "\n").replace("\r", "\n").split("\n");
			File.saveContent(filePath, lines.map(processLine).join("\n"));
		}
		else
		{
			Sys.println("Arguments: <fileToProcess.hx>");
		}
	}
	
	static function processLine(line:String) : String
	{
		//                    1            2          3             4                   5                                                       6
		var re = new EReg('^(\\s*)(.*?function\\s+)($reID)\\s*[(]([^)]*)[)]\\s*[:]\\s*(.*?)\\s*(?:return\\s+untyped|untyped)\\s+__call__[(]\'($reID)\'.*?$', "");
		if (re.match(line))
		{
			var spaces = re.matched(1);
			var prefix = re.matched(2);
			var name = re.matched(3);
			var paramsString = re.matched(4);
			var retType = re.matched(5);
			var rawName = re.matched(6);
			
			//trace("spaces = " + spaces);
			//trace("prefix = " + prefix);
			//trace("name = " + name);
			//trace("paramsString = " + paramsString);
			//trace("retType = " + retType);
			//trace("rawName = " + rawName);
			
			var params = parseParams(paramsString);
			//trace(Debug.getDump(args));
			
			var indexes = findParamIndexes(params);
			
			if (indexes.length > 0)
			{
				var r = spaces + prefix.replace("inline ", "") + name + "(" + paramsString + ") : " + retType + "\n" + spaces + "{\n";
				
				r += generateCall(params, indexes, retType, rawName, spaces + "\t") + spaces + "}";
				
				return r;
			}
		}
		return line;
	}
	
	static function generateCall(params:Array<Param>, indexes:Array<Int>, retType:String, rawName:String, spaces:String) : String
	{
		if (indexes.length == 0) return spaces + getCallString(params, retType, rawName);
		
		var n = indexes.pop();
		var p = params[n];
		
		var r = spaces + "if (untyped __physeq__(" + p.name + ", null))\n";
		r    += spaces + "{\n";
		r    += generateCall(params.slice(0, n), indexes, retType, rawName, spaces + "\t");
		r    += spaces + "}\n";
		r    += spaces + "else\n";
		r    += spaces + "{\n";
		r    += spaces + "\t" + getCallString(params, retType, rawName);
		r    += spaces + "}\n";
		
		return r;
	}
	
	static function getCallString(params:Array<Param>, retType:String, rawName:String) : String
	{
		return (retType != "Void" ? "return ":"") + "untyped __call__('" + rawName + "'" + (params.length > 0 ? ", " : "") + (params.map.fn(_.name).join(", ")) + ");\n";
	}
	
	static function parseParams(params:String) : Array<Param>
	{
		var r = [];
		
		new EReg(reParam, "g").map(params, function(re)
		{
			r.push
			({
				name:re.matched(2),
				type:re.matched(3),
				value:re.matched(4),
				optional:re.matched(1) == "?"
			});
			
			//trace("PARAM " + re.matched(0));
			
			return re.matched(0);
		});
		
		return r;
	}
	
	static function findParamIndexes(params:Array<Param>) : Array<Int>
	{
		var r = [];
		
		for (i in 0...params.length)
		{
			var p = params[i];
			if (p.optional && p.value == null
			 || p.value != null && [ "", "true", "false", "null" ].indexOf(p.value.toLowerCase()) < 0 && !~/^['"0-9+-]/.match(p.value)) r.push(i);
		}
		
		return r;
	}
}