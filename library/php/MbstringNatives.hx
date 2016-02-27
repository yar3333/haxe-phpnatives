package php;

class MbstringNatives
{
	public static inline function mb_check_encoding(?var_:String, ?encoding:String) : Bool return untyped __call__('mb_check_encoding', var_, encoding);
	
	public static inline function mb_convert_case(str:String, mode:Int, ?encoding:String) : String return untyped __call__('mb_convert_case', str, mode, encoding);
	
	public static inline function mb_convert_encoding(str:String, to_encoding:String, ?from_encoding:Dynamic) : String return untyped __call__('mb_convert_encoding', str, to_encoding, from_encoding);
	
	public static inline function mb_convert_kana(str:String, option="KV", ?encoding:String) : String return untyped __call__('mb_convert_kana', str, option, encoding);
	
	public static inline function mb_convert_variables(to_encoding:String, from_encoding:Dynamic, vars:Dynamic, ?restArgs:Dynamic) : String return untyped __call__('mb_convert_variables', to_encoding, from_encoding, vars, restArgs);
	
	public static inline function mb_decode_mimeheader(str:String) : String return untyped __call__('mb_decode_mimeheader', str);
	
	public static inline function mb_decode_numericentity(str:String, convmap:NativeArray, ?encoding:String) : String return untyped __call__('mb_decode_numericentity', str, convmap, encoding);
	
	public static inline function mb_detect_encoding(str:String, ?encoding_list:Dynamic, ?strict:Bool=false) : String return untyped __call__('mb_detect_encoding', str, encoding_list, strict);
	
	public static inline function mb_detect_order(?encoding_list:Dynamic) : Dynamic return untyped __call__('mb_detect_order', encoding_list);
	
	public static inline function mb_encode_mimeheader(str:String, ?charset:String, transfer_encoding="B", linefeed="\r\n", indent=0) : String return untyped __call__('mb_encode_mimeheader', str, charset, transfer_encoding, linefeed, indent);
	
	public static inline function mb_encode_numericentity(str:String, convmap:NativeArray, ?encoding:String, ?is_hex:Bool=false) : String return untyped __call__('mb_encode_numericentity', str, convmap, encoding, is_hex);
	
	public static inline function mb_encoding_aliases(encoding:String) : NativeArray return untyped __call__('mb_encoding_aliases', encoding);
	
	public static inline function mb_ereg_match(pattern:String, str:String, option="msr") : Bool return untyped __call__('mb_ereg_match', pattern, str, option);
	
	public static inline function mb_ereg_replace_callback(pattern:String, callback:Array<Dynamic>->String, str:String, option="msr") : String return untyped __call__('mb_ereg_replace_callback', pattern, callback, str, option);
	
	public static inline function mb_ereg_replace(pattern:String, replacement:String, str:String, option="msr") : String return untyped __call__('mb_ereg_replace', pattern, replacement, str, option);
	
	public static inline function mb_ereg_search_getpos() : Int return untyped __call__('mb_ereg_search_getpos');
	
	public static inline function mb_ereg_search_getregs() : NativeArray return untyped __call__('mb_ereg_search_getregs');
	
	public static inline function mb_ereg_search_init(str:String, ?pattern:String, option="msr") : Bool return untyped __call__('mb_ereg_search_init', str, pattern, option);
	
	public static inline function mb_ereg_search_pos(?pattern:String, option="ms") : NativeArray return untyped __call__('mb_ereg_search_pos', pattern, option);
	
	public static inline function mb_ereg_search_regs(?pattern:String, option="ms") : NativeArray return untyped __call__('mb_ereg_search_regs', pattern, option);
	
	public static inline function mb_ereg_search_setpos(position:Int) : Bool return untyped __call__('mb_ereg_search_setpos', position);
	
	public static inline function mb_ereg_search(?pattern:String, option="ms") : Bool return untyped __call__('mb_ereg_search', pattern, option);
	
	public static inline function mb_ereg(pattern:String, str:String, ?regs:NativeArray) : Int return untyped __call__('mb_ereg', pattern, str, regs);
	
	public static inline function mb_eregi_replace(pattern:String, replace:String, str:String, option="msri") : String return untyped __call__('mb_eregi_replace', pattern, replace, str, option);
	
	public static inline function mb_eregi(pattern:String, str:String, ?regs:NativeArray) : Int return untyped __call__('mb_eregi', pattern, str, regs);
	
	public static inline function mb_get_info(type="all") : Dynamic return untyped __call__('mb_get_info', type);
	
	public static inline function mb_http_input(type="") : Dynamic return untyped __call__('mb_http_input', type);
	
	public static inline function mb_http_output(?encoding:String) : Dynamic return untyped __call__('mb_http_output', encoding);
	
	public static inline function mb_internal_encoding(?encoding:String) : Dynamic return untyped __call__('mb_internal_encoding', encoding);
	
	public static inline function mb_language(?language:String) : Dynamic return untyped __call__('mb_language', language);
	
	public static inline function mb_list_encodings() : NativeArray return untyped __call__('mb_list_encodings');
	
	public static inline function mb_output_handler(contents:String, status:Int) : String return untyped __call__('mb_output_handler', contents, status);
	
	public static inline function mb_parse_str(encoded_string:String, ?result:NativeArray) : Bool return untyped __call__('mb_parse_str', encoded_string, result);
	
	public static inline function mb_preferred_mime_name(encoding:String) : String return untyped __call__('mb_preferred_mime_name', encoding);
	
	public static inline function mb_regex_encoding(?encoding:String) : Dynamic return untyped __call__('mb_regex_encoding', encoding);
	
	public static inline function mb_regex_set_options(?options:String) : String return untyped __call__('mb_regex_set_options', options);
	
	public static inline function mb_send_mail(to:String, subject:String, message:String, ?additional_headers:String, ?additional_parameter:String) : Bool return untyped __call__('mb_send_mail', to, subject, message, additional_headers, additional_parameter);
	
	public static inline function mb_split(pattern:String, str:String, ?limit:Int=-1) : NativeArray return untyped __call__('mb_split', pattern, str, limit);
	
	public static inline function mb_strcut(str:String, start:Int, ?length:Int, ?encoding:String) : String return untyped __call__('mb_strcut', str, start, length, encoding);
	
	public static inline function mb_strimwidth(str:String, start:Int, width:Int, trimmarker="", ?encoding:String) : String return untyped __call__('mb_strimwidth', str, start, width, trimmarker, encoding);
	
	public static inline function mb_stripos(haystack:String, needle:String, offset=0, ?encoding:String) : Int return untyped __call__('mb_stripos', haystack, needle, offset, encoding);
	
	public static inline function mb_stristr(haystack:String, needle:String, ?before_needle:Bool=false, ?encoding:String) : String return untyped __call__('mb_stristr', haystack, needle, before_needle, encoding);
	
	public static inline function mb_strlen(str:String, ?encoding:String) : Dynamic return untyped __call__('mb_strlen', str, encoding);
	
	public static inline function mb_strpos(haystack:String, needle:String, offset=0, ?encoding:String) : Int return untyped __call__('mb_strpos', haystack, needle, offset, encoding);
	
	public static inline function mb_strrchr(haystack:String, needle:String, ?part:Bool=false, ?encoding:String) : String return untyped __call__('mb_strrchr', haystack, needle, part, encoding);
	
	public static inline function mb_strrichr(haystack:String, needle:String, ?part:Bool=false, ?encoding:String) : String return untyped __call__('mb_strrichr', haystack, needle, part, encoding);
	
	public static inline function mb_strripos(haystack:String, needle:String, offset=0, ?encoding:String) : Int return untyped __call__('mb_strripos', haystack, needle, offset, encoding);
	
	public static inline function mb_strrpos(haystack:String, needle:String, offset=0) : Int return untyped __call__('mb_strrpos', haystack, needle, offset);
	
	public static inline function mb_strrpos_pos(haystack:String, needle:String, offset=0, encoding:String) : Int return untyped __call__('mb_strrpos', haystack, needle, offset, encoding);
	
	public static inline function mb_strstr(haystack:String, needle:String, ?before_needle:Bool=false, ?encoding:String) : String return untyped __call__('mb_strstr', haystack, needle, before_needle, encoding);
	
	public static inline function mb_strtolower(str:String, ?encoding:String) : String return untyped __call__('mb_strtolower', str, encoding);
	
	public static inline function mb_strtoupper(str:String, ?encoding:String) : String return untyped __call__('mb_strtoupper', str, encoding);
	
	public static inline function mb_strwidth(str:String, ?encoding:String) : Int return untyped __call__('mb_strwidth', str, encoding);
	
	public static inline function mb_substitute_character(?substrchar:Dynamic) : Dynamic return untyped __call__('mb_substitute_character', substrchar);
	
	public static inline function mb_substr_count(haystack:String, needle:String, ?encoding:String) : Int return untyped __call__('mb_substr_count', haystack, needle, encoding);
	
	public static inline function mb_substr(str:String, start:Int, ?length:Int, ?encoding:String) : String return untyped __call__('mb_substr', str, start, length, encoding);
	
	public static inline function str_split(str:String, ?split_length:Int=1) : NativeArray return untyped __call__('str_split', str, split_length);
}
