package php.calendar;

@:native("DatePeriod")
extern class DatePeriod implements Traversable
{
	static var EXCLUDE_START_DATE(default, null) : Int;

	function new(start:DateTimeInterface, interval:DateInterval, recurrences:Int, ?options:Int) : Void;
	function new(start:DateTimeInterface, interval:DateInterval, end:DateTimeInterface, ?options:Int) : Void;
	function new(isostr:String, ?options:Int) : Void;
}
