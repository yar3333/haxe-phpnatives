import haxe.unit.TestCase;
import php.*;
import php.calendar.*;
import php.exceptions.*;

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
		assertEquals(2, PcreNatives.preg_match_all_ex("/a./", "123a4hnt3a5", matches));
		assertEquals(1, ArrayNatives.count(matches));
		assertEquals(2, ArrayNatives.count(matches[0]));
		
		assertEquals(1, PcreNatives.preg_match(untyped __php__("\"/\\*/\""), "a*b"));
		assertEquals(1, PcreNatives.preg_match("/\\*/", "a*b"));
	}
}
