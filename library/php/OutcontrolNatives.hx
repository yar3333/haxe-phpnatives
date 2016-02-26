package php;

class OutcontrolNatives
{
	//{ outcontrol
	
	public static inline function flush() : Void return untyped __call__('flush');
	public static inline function header(str:String, replace=true) : Void return untyped __call__('header', str, replace);
	public static inline function header_ex(str:String, replace=true, http_response_code:Int) : Void return untyped __call__('header', str, replace, http_response_code);
	public static inline function setcookie(name:String, value="", expire=0, path="", domain="", secure=false, httponly=false) : Bool return untyped __call__('setcookie', name, value, expire, path, domain, secure, httponly);
	public static inline function ob_clean() : Void return untyped __call__('ob_clean');
	public static inline function ob_end_clean() : Bool return untyped __call__('ob_end_clean');
	public static inline function ob_end_flush() : Bool return untyped __call__('ob_end_flush');
	public static inline function ob_flush() : Void return untyped __call__('ob_flush');
	public static inline function ob_get_clean() : String return untyped __call__('ob_get_clean');
	public static inline function ob_get_contents() : String return untyped __call__('ob_get_contents');
	public static inline function ob_get_flush() : String return untyped __call__('ob_get_flush');
	public static inline function ob_get_length() : Int return untyped __call__('ob_get_length');
	public static inline function ob_get_level() : Int return untyped __call__('ob_get_level');
	public static inline function ob_get_status(full_status=false) : NativeArray return untyped __call__('ob_get_status', full_status);
	public static inline function ob_gzhandler(buffer:String, mode:Int) : String return untyped __call__('ob_gzhandler', buffer, mode);
	public static inline function ob_implicit_flush(flag=true) : Void return untyped __call__('ob_implicit_flush', flag);
	public static inline function ob_list_handlers() : NativeArray return untyped __call__('ob_list_handlers');
	public static inline function ob_start(?output_callback:String->Int->String, chunk_size=0) : Bool return untyped __call__('ob_start', output_callback, chunk_size);
	public static inline function ob_start_ex(?output_callback:String->Int->String, chunk_size=0, flags:Int) : Bool return untyped __call__('ob_start', output_callback, chunk_size, flags);
	public static inline function output_add_rewrite_var(name:String, value:String) : Bool return untyped __call__('output_add_rewrite_var', name, value);
	public static inline function output_reset_rewrite_vars() : Bool return untyped __call__('output_reset_rewrite_vars');
	
	//}
}
