package php.calendar;

@:native("DateTimeZone")
extern class DateTimeZone
{
	static var AFRICA : Int;
	static var AMERICA : Int;
	static var ANTARCTICA : Int;
	static var ARCTIC : Int;
	static var ASIA : Int;
	static var ATLANTIC : Int;
	static var AUSTRALIA : Int;
	static var EUROPE : Int;
	static var INDIAN : Int;
	static var PACIFIC : Int;
	static var UTC : Int;
	static var ALL : Int;
	static var ALL_WITH_BC : Int;
	static var PER_COUNTRY : Int;
	
	function new(timezone:String) : Void;
	function getLocation() : NativeArray;
	function getName() : String;
	function getOffset(datetime:DateTime) : Float;
	function getTransitions(?timestamp_begin:Int, ?timestamp_end:Int) : NativeArray;
	
	static function listAbbreviations() : NativeArray;
	static function listIdentifiers(?what:Int, ?country:String) : NativeArray;
}
