package php;

class InfoNatives
{
	public static inline function assert_options(what:Int, ?value:Dynamic) : Dynamic return untyped __call__('assert_options', what, value);
	
	public static inline function assert(assertion:Dynamic, ?description:String) : Bool return untyped __call__('assert', assertion, description);
	
	public static inline function cli_get_process_title() : String return untyped __call__('cli_get_process_title');
	
	public static inline function cli_set_process_title(title:String) : Bool return untyped __call__('cli_set_process_title', title);
	
	public static inline function dl(library:String) : Bool return untyped __call__('dl', library);
	
	public static inline function extension_loaded(name:String) : Bool return untyped __call__('extension_loaded', name);
	
	public static inline function gc_collect_cycles() : Int return untyped __call__('gc_collect_cycles');
	
	public static inline function gc_disable() : Void return untyped __call__('gc_disable');
	
	public static inline function gc_enable() : Void return untyped __call__('gc_enable');
	
	public static inline function gc_enabled() : Bool return untyped __call__('gc_enabled');
	
	public static inline function gc_mem_caches() : Int return untyped __call__('gc_mem_caches');
	
	public static inline function get_cfg_var(option:String) : String return untyped __call__('get_cfg_var', option);
	
	public static inline function get_current_user() : String return untyped __call__('get_current_user');
	
	public static inline function get_defined_constants(?categorize:Bool=false) : NativeArray return untyped __call__('get_defined_constants', categorize);
	
	public static inline function get_extension_funcs(module_name:String) : NativeArray return untyped __call__('get_extension_funcs', module_name);
	
	public static inline function get_include_path() : String return untyped __call__('get_include_path');
	
	public static inline function get_included_files() : NativeArray return untyped __call__('get_included_files');
	
	public static inline function get_loaded_extensions(?zend_extensions:Bool=false) : NativeArray return untyped __call__('get_loaded_extensions', zend_extensions);
	
	public static inline function get_magic_quotes_gpc() : Bool return untyped __call__('get_magic_quotes_gpc');
	
	public static inline function get_magic_quotes_runtime() : Bool return untyped __call__('get_magic_quotes_runtime');
	
	public static inline function get_resources(?type:String) : NativeArray return untyped __call__('get_resources', type);
	
	public static inline function getenv(varname:String) : String return untyped __call__('getenv', varname);
	
	public static inline function getlastmod() : Int return untyped __call__('getlastmod');
	
	public static inline function getmygid() : Int return untyped __call__('getmygid');
	
	public static inline function getmyinode() : Int return untyped __call__('getmyinode');
	
	public static inline function getmypid() : Int return untyped __call__('getmypid');
	
	public static inline function getmyuid() : Int return untyped __call__('getmyuid');
	
	public static inline function getopt(options:String, ?longopts:NativeArray) : NativeArray return untyped __call__('getopt', options, longopts);
	
	public static inline function getrusage(who=0) : NativeArray return untyped __call__('getrusage', who);
	
	public static inline function ini_get_all(?extension:String, ?details:Bool=true) : NativeArray return untyped __call__('ini_get_all', extension, details);
	
	public static inline function ini_get(varname:String) : String return untyped __call__('ini_get', varname);
	
	public static inline function ini_restore(varname:String) : Void return untyped __call__('ini_restore', varname);
	
	public static inline function ini_set(varname:String, newvalue:String) : String return untyped __call__('ini_set', varname, newvalue);
	
	public static inline function memory_get_peak_usage(?real_usage:Bool=false) : Int return untyped __call__('memory_get_peak_usage', real_usage);
	
	public static inline function memory_get_usage(?real_usage:Bool=false) : Int return untyped __call__('memory_get_usage', real_usage);
	
	public static inline function php_ini_loaded_file() : String return untyped __call__('php_ini_loaded_file');
	
	public static inline function php_ini_scanned_files() : String return untyped __call__('php_ini_scanned_files');
	
	public static inline function php_logo_guid() : String return untyped __call__('php_logo_guid');
	
	public static inline function php_sapi_name() : String return untyped __call__('php_sapi_name');
	
	public static inline function php_uname(mode="a") : String return untyped __call__('php_uname', mode);
	
	public static inline function phpcredits() : Bool return untyped __call__('phpcredits');
	
	public static inline function phpcredits_ex(flag:Int) : Bool return untyped __call__('phpcredits', flag);
	
	public static inline function phpinfo() : Bool return untyped __call__('phpinfo');
	
	public static inline function phpinfo_ex(what:Int) : Bool return untyped __call__('phpinfo', what);
	
	public static inline function phpversion(?extension:String) : String return untyped __call__('phpversion', extension);
	
	public static inline function putenv(setting:String) : Bool return untyped __call__('putenv', setting);
	
	public static inline function restore_include_path() : Void return untyped __call__('restore_include_path');
	
	public static inline function set_include_path(new_include_path:String) : String return untyped __call__('set_include_path', new_include_path);
	
	public static inline function set_magic_quotes_runtime(new_setting:Bool) : Bool return untyped __call__('set_magic_quotes_runtime', new_setting);
	
	public static inline function set_time_limit(seconds:Int) : Bool return untyped __call__('set_time_limit', seconds);
	
	public static inline function sys_get_temp_dir() : String return untyped __call__('sys_get_temp_dir');
	
	public static inline function version_compare(version1:String, version2:String, ?operator:String) : Dynamic return untyped __call__('version_compare', version1, version2, operator);
	
	public static inline function zend_logo_guid() : String return untyped __call__('zend_logo_guid');
	
	public static inline function zend_thread_id() : Int return untyped __call__('zend_thread_id');
	
	public static inline function zend_version() : String return untyped __call__('zend_version');
}
