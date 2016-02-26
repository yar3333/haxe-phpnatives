import haxe.unit.TestCase;
import php.NativeArray;
import php.VarNatives;
import php.ArrayNatives;
import php.ImapNatives;
import php.DatetimeNatives;
import php.InfoNatives;
import php.StringsNatives;
import php.MbstringNatives;
import php.PcreNatives;
import php.IconvNatives;
import php.MathNatives;

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
	
	function testPcre()
	{
		var matches : NativeArray;
		assertEquals(2, PcreNatives.preg_match_all("/a./", "123a4hnt3a5", matches));
		assertEquals(1, ArrayNatives.count(matches));
		assertEquals(2, ArrayNatives.count(matches[0]));
	}
}
