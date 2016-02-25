package php;

class VarNatives
{
	//{ var
	
	public static inline function boolval(var_:Dynamic) : Bool return untyped __call__('boolval', var_);
	public static inline function debug_zval_dump(variable:Dynamic, restArgs:Dynamic) : Void return untyped __call__('debug_zval_dump', variable, restArgs);
	public static inline function empty(var_:Dynamic) : Bool return untyped __call__('empty', var_);
	public static inline function floatval(var_:Dynamic) : Float return untyped __call__('floatval', var_);
	public static inline function get_defined_vars() : NativeArray return untyped __call__('get_defined_vars', void);
	public static inline function get_resource_type(handle:Resource) : String return untyped __call__('get_resource_type', handle);
	public static inline function gettype(var_:Dynamic) : String return untyped __call__('gettype', var_);
	public static inline function import_request_variables(types:String, ?prefix:String) : Bool return untyped __call__('import_request_variables', types, prefix);
	public static inline function intval(var_:Dynamic, ?base:Int=10) : Int return untyped __call__('intval', var_, base);
	public static inline function is_array(var_:Dynamic) : Bool return untyped __call__('is_array', var_);
	public static inline function is_bool(var_:Dynamic) : Bool return untyped __call__('is_bool', var_);
	public static inline function is_callable(var_:Dynamic, ?syntax_only:Bool=false, ?callable_name:String) : Bool return untyped __call__('is_callable', var_, syntax_only, callable_name:String);
	public static inline function is_float(var_:Dynamic) : Bool return untyped __call__('is_float', var_);
	public static inline function is_int(var_:Dynamic) : Bool return untyped __call__('is_int', var_);
	public static inline function is_null(var_:Dynamic) : Bool return untyped __call__('is_null', var_);
	public static inline function is_numeric(var_:Dynamic) : Bool return untyped __call__('is_numeric', var_);
	public static inline function is_object(var_:Dynamic) : Bool return untyped __call__('is_object', var_);
	public static inline function is_resource(var_:Dynamic) : Bool return untyped __call__('is_resource', var_);
	public static inline function is_scalar(var_:Dynamic) : Bool return untyped __call__('is_scalar', var_);
	public static inline function is_string(var_:Dynamic) : Bool return untyped __call__('is_string', var_);
	public static inline function isset(var_:Dynamic, restArgs:Dynamic) : Bool return untyped __call__('isset', var_, restArgs);
	public static inline function print_r(expression:Dynamic, ?return:Bool=false) : Dynamic return untyped __call__('print_r', expression, return);
	public static inline function serialize(value:Dynamic) : String return untyped __call__('serialize', value);
	public static inline function settype(var_:Dynamic, type:String) : Bool return untyped __call__('settype', var_:Dynamic, type);
	public static inline function strval(var_:Dynamic) : String return untyped __call__('strval', var_);
	public static inline function unserialize(str:String, ?options:NativeArray) : Dynamic return untyped __call__('unserialize', str, options);
	public static inline function unset(var_:Dynamic, restArgs:Dynamic) : Void return untyped __call__('unset', var_, restArgs);
	public static inline function var_dump(expression:Dynamic, restArgs:Dynamic) : Void return untyped __call__('var_dump', expression, restArgs);
	public static inline function var_export(expression:Dynamic, ?return:Bool=false) : Dynamic return untyped __call__('var_export', expression, return);
	
	//}
}
