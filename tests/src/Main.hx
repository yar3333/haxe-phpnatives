import haxe.unit.TestCase;
import php.VarNatives;
import php.ArrayNatives;
import php.ImapNatives;
import php.DatetimeNatives;
import php.InfoNatives;
import php.StringsNatives;
import php.MbstringNatives;

class Main extends TestCase
{
	static public function main()
	{
		var r = new haxe.unit.TestRunner();
		r.add(new Main());
		r.run();
	}
	
	function testBase()
	{
		assertEquals(3, ArrayNatives.count(ArrayNatives.preg_split("/,/", "a,b,c")));
	}
}
