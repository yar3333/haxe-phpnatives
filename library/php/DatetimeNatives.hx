package php;

class DatetimeNatives
{
	//{ datetime
	
	public static inline function checkdate(month:Int, day:Int, year:Int) : Bool return untyped __call__('checkdate', month, day, year);
	public static inline function date_default_timezone_get() : String return untyped __call__('date_default_timezone_get');
	public static inline function date_default_timezone_set(timezone_identifier:String) : Bool return untyped __call__('date_default_timezone_set', timezone_identifier);
	public static inline function date_parse_from_format(format:String, date:String) : NativeArray return untyped __call__('date_parse_from_format', format, date);
	public static inline function date_parse(date:String) : NativeArray return untyped __call__('date_parse', date);
	public static inline function date_sun_info(time:Int, latitude:Float, longitude:Float) : NativeArray return untyped __call__('date_sun_info', time, latitude, longitude);
	//mixed date_sunrise(timestamp:Int, ?format:Int=SUNFUNCS_RET_STRING, ?latitude:Float=COMPLEX_VALUE), ?longitude:Float=COMPLEX_VALUE), ?zenith:Float=COMPLEX_VALUE), ?gmt_offset:Float=0)
	//mixed date_sunset(timestamp:Int, ?format:Int=SUNFUNCS_RET_STRING, ?latitude:Float=COMPLEX_VALUE), ?longitude:Float=COMPLEX_VALUE), ?zenith:Float=COMPLEX_VALUE), ?gmt_offset:Float=0)
	public static inline function date(format:String) : String return untyped __call__('date', format);
	public static inline function date_ex(format:String, timestamp:Int) : String return untyped __call__('date', format, timestamp);
	public static inline function getdate() : NativeArray return untyped __call__('getdate');
	public static inline function getdate_ex(timestamp:Int) : NativeArray return untyped __call__('getdate', timestamp);
	public static inline function gettimeofday(?return_float:Bool=false) : Dynamic return untyped __call__('gettimeofday', return_float);
	public static inline function gmdate(format:String) : String return untyped __call__('gmdate', format);
	public static inline function gmdate_ex(format:String, timestamp:Int) : String return untyped __call__('gmdate', format, timestamp);
	//int gmmktime(?hour:Int=COMPLEX_VALUE), ?minute:Int=COMPLEX_VALUE), ?second:Int=COMPLEX_VALUE), ?month:Int=COMPLEX_VALUE), ?day:Int=COMPLEX_VALUE), ?year:Int=COMPLEX_VALUE), ?is_dst:Int=-1)
	public static inline function gmstrftime(format:String) : String return untyped __call__('gmstrftime', format);
	public static inline function gmstrftime_ex(format:String, timestamp:Int) : String return untyped __call__('gmstrftime', format, timestamp);
	public static inline function idate(format:String) : Int return untyped __call__('idate', format);
	public static inline function idate_ex(format:String, timestamp:Int) : Int return untyped __call__('idate', format, timestamp);
	public static inline function localtime() : NativeArray return untyped __call__('localtime');
	public static inline function localtime_ex(timestamp:Int, is_associative=false) : NativeArray return untyped __call__('localtime', timestamp, is_associative);
	public static inline function microtime(?get_as_float:Bool=false) : Dynamic return untyped __call__('microtime', get_as_float);
	//int mktime(?hour:Int=COMPLEX_VALUE), ?minute:Int=COMPLEX_VALUE), ?second:Int=COMPLEX_VALUE), ?month:Int=COMPLEX_VALUE), ?day:Int=COMPLEX_VALUE), ?year:Int=COMPLEX_VALUE), ?is_dst:Int=-1)
	public static inline function strftime(format:String) : String return untyped __call__('strftime', format);
	public static inline function strftime_ex(format:String, timestamp:Int) : String return untyped __call__('strftime', format, timestamp);
	public static inline function strptime(date:String, format:String) : NativeArray return untyped __call__('strptime', date, format);
	public static inline function strtotime(time:String) : Int return untyped __call__('strtotime', time);
	public static inline function strtotime_ex(time:String, now:Int) : Int return untyped __call__('strtotime', time, now);
	public static inline function time() : Int return untyped __call__('time');
	public static inline function timezone_name_from_abbr(abbr:String, ?gmtOffset:Int=-1, ?isdst:Int=-1) : String return untyped __call__('timezone_name_from_abbr', abbr, gmtOffset, isdst);
	public static inline function timezone_version_get() : String return untyped __call__('timezone_version_get');
	
	//}
}
