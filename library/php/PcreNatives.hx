package php;

class PcreNatives
{
	//{ pcre
	
	public static inline function preg_filter(pattern:Dynamic, replacement:Dynamic, subject:Dynamic, ?limit:Int=-1, ?count:Int) : Dynamic return untyped __call__('preg_filter', pattern, replacement, subject, limit, count);
	public static inline function preg_grep(pattern:String, input:NativeArray, flags=0) : NativeArray return untyped __call__('preg_grep', pattern, input, flags);
	public static inline function preg_last_error() : Int return untyped __call__('preg_last_error');
	public static inline function preg_match_all(pattern:String, subject:String, ?matches:NativeArray) : Int return untyped __call__('preg_match_all', pattern, subject, matches);
	public static inline function preg_match_all_ex(pattern:String, subject:String, ?matches:NativeArray, flags:Int, offset=0) : Int return untyped __call__('preg_match_all', pattern, subject, matches, flags, offset);
	public static inline function preg_match(pattern:String, subject:String, ?matches:NativeArray, flags=0, offset=0) : Int return untyped __call__('preg_match', pattern, subject, matches, flags, offset);
	public static inline function preg_quote(str:String, ?delimiter:String) : String return untyped __call__('preg_quote', str, delimiter);
	public static inline function preg_replace_callback_array(patterns_and_callbacks:NativeArray, subject:Dynamic, ?limit:Int=-1, ?count:Int) : Dynamic return untyped __call__('preg_replace_callback_array', patterns_and_callbacks, subject, limit, count);
	public static inline function preg_replace_callback(pattern:Dynamic, callback:NativeArray->String, subject:Dynamic, ?limit:Int=-1, ?count:Int) : Dynamic return untyped __call__('preg_replace_callback', pattern, callback, subject, limit, count);
	public static inline function preg_replace<T>(pattern:Dynamic, replacement:Dynamic, subject:T, ?limit:Int=-1, ?count:Int) : T return untyped __call__('preg_replace', pattern, replacement, subject, limit, count);
	public static inline function preg_split(pattern:String, subject:String, ?limit:Int=-1, flags=0) : NativeArray return untyped __call__('preg_split', pattern, subject, limit, flags);
	
	//}
}
