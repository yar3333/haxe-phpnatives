package php.calendar;

@:native("DateTime")
extern class DateTime
{
	static var ATOM : String;
	static var COOKIE : String;
	static var ISO8601 : String;
	static var RFC822 : String;
	static var RFC850 : String;
	static var RFC1036 : String;
	static var RFC1123 : String;
	static var RFC2822 : String;
	static var RFC3339 : String;
	static var RSS : String;
	static var W3C : String;

	function new(?time:String, ?timezone:DateTimeZone) : Void;
	
	function add(interval:DateInterval) : DateTime;
	
	static function createFromFormat(format:String, time:String, ?timezone:DateTimeZone) : DateTime;
	static function getLastErrors () : NativeArray;
	
	function modify(modify:String) : DateTime;
	
	static function __set_state(array:NativeArray) : DateTime;
	
	function setDate(year:Int, month:Int, day:Int) : DateTime;
	function setISODate(year:Int, week:Int, ?day:Int) : DateTime;
	function setTime(hour:Int, minute:Int, ?second:Int) : DateTime;
	function setTimestamp(unixtimestamp:Int) : DateTime;
	function setTimezone(timezone:DateTimeZone) : DateTime;
	function sub(interval:DateInterval) : DateTime;
	function diff(datetime2:DateTimeInterface, ?absolute:Bool) : DateInterval;
	function format(format:String) : String;
	function getOffset() : Int;
	function getTimestamp() : Int;
	function getTimezone() : DateTimeZone;
	function __wakeup() : Void;
}