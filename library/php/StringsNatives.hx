package php;

class StringsNatives
{
	public static inline function addcslashes(str:String, charlist:String) : String return untyped __call__('addcslashes', str, charlist);
	
	public static inline function addslashes(str:String) : String return untyped __call__('addslashes', str);
	
	public static inline function bin2hex(str:String) : String return untyped __call__('bin2hex', str);
	
	public static inline function chr(ascii:Int) : String return untyped __call__('chr', ascii);
	
	public static inline function chunk_split(body:String, ?chunklen:Int=76, end="\r\n") : String return untyped __call__('chunk_split', body, chunklen, end);
	
	public static inline function convert_cyr_string(str:String, from:String, to:String) : String return untyped __call__('convert_cyr_string', str, from, to);
	
	public static inline function convert_uudecode(data:String) : String return untyped __call__('convert_uudecode', data);
	
	public static inline function convert_uuencode(data:String) : String return untyped __call__('convert_uuencode', data);
	
	public static inline function count_chars(str:String, mode=0) : Dynamic return untyped __call__('count_chars', str, mode);
	
	public static inline function crc32(str:String) : Int return untyped __call__('crc32', str);
	
	public static inline function crypt(str:String, ?salt:String) : String return untyped __call__('crypt', str, salt);
	
	public static inline function echo(arg1:String, ?restArgs:String) : Void return untyped __call__('echo', arg1, restArgs);
	
	public static inline function explode(delimiter:String, str:String, ?limit:Int) : NativeArray return untyped __call__('explode', delimiter, str, limit);
	
	public static inline function fprintf(handle:Resource, format:String, ?args:Dynamic, ?restArgs:Dynamic) : Int return untyped __call__('fprintf', handle, format, args, restArgs);
	
	public static inline function get_html_translation_table() : NativeArray return untyped __call__('get_html_translation_table');
	
	public static inline function get_html_translation_table(?table:Int, ?flags:Int, encoding="UTF-8") : NativeArray return untyped __call__('get_html_translation_table', table, flags, encoding);
	
	public static inline function hebrev(hebrew_text:String, max_chars_per_line=0) : String return untyped __call__('hebrev', hebrew_text, max_chars_per_line);
	
	public static inline function hebrevc(hebrew_text:String, max_chars_per_line=0) : String return untyped __call__('hebrevc', hebrew_text, max_chars_per_line);
	
	public static inline function hex2bin(data:String) : String return untyped __call__('hex2bin', data);
	
	public static inline function html_entity_decode(str:String, ?flags:Int, ?encoding:String) : String return untyped __call__('html_entity_decode', str, flags, encoding);
	
	public static inline function htmlentities(str:String, ?flags:Int, ?encoding:String, ?double_encode:Bool) : String return untyped __call__('htmlentities', str, flags, encoding, double_encode);
	
	public static inline function htmlspecialchars_decode(str:String, ?flags:Int) : String return untyped __call__('htmlspecialchars_decode', str, flags);
	
	public static inline function htmlspecialchars(str:String, ?flags:Int, ?encoding:String), ?double_encode:Bool) : String return untyped untyped __call__('htmlspecialchars', str);
	
	public static inline function implode(glue="", pieces:NativeArray) : String return untyped __call__('implode', glue, pieces);
	
	public static inline function lcfirst(str:String) : String return untyped __call__('lcfirst', str);
	
	public static inline function levenshtein(str1:String, str2:String) : Int return untyped __call__('levenshtein', str1, str2);
	
	public static inline function localeconv() : NativeArray return untyped __call__('localeconv');
	
	public static inline function ltrim(str:String, ?character_mask:String) : String return untyped __call__('ltrim', str, character_mask);
	
	public static inline function md5_file(filename:String, raw_output=false) : String return untyped __call__('md5_file', filename, raw_output);
	
	public static inline function md5(str:String, raw_output=false) : String return untyped __call__('md5', str, raw_output);
	
	public static inline function metaphone(str:String, phonemes=0) : String return untyped __call__('metaphone', str, phonemes);
	
	public static inline function money_format(format:String, number:Float) : String return untyped __call__('money_format', format, number);
	
	public static inline function nl_langinfo(item:Int) : String return untyped __call__('nl_langinfo', item);
	
	public static inline function nl2br(str:String, is_xhtml=true) : String return untyped __call__('nl2br', str, is_xhtml);
	
	public static inline function number_format(number:Float, decimals=0) : String return untyped __call__('number_format', number, decimals);
	
	public static inline function ord(str:String) : Int return untyped __call__('ord', str);
	
	public static inline function parse_str(str:String, ?arr:NativeArray) : Void return untyped __call__('parse_str', str, arr);
	
	public static inline function print(arg:String) : Int return untyped __call__('print', arg);
	
	public static inline function printf(format:String, ?args:Dynamic, ?restArgs:Dynamic) : Int return untyped __call__('printf', format, args, restArgs);
	
	public static inline function quoted_printable_decode(str:String) : String return untyped __call__('quoted_printable_decode', str);
	
	public static inline function quoted_printable_encode(str:String) : String return untyped __call__('quoted_printable_encode', str);
	
	public static inline function quotemeta(str:String) : String return untyped __call__('quotemeta', str);
	
	public static inline function rtrim(str:String, ?character_mask:String) : String return untyped __call__('rtrim', str, character_mask);
	
	public static inline function setlocale(category:Int, locale:String, ?restArgs:String) : String return untyped __call__('setlocale', category, locale, restArgs);
	
	public static inline function sha1_file(filename:String, raw_output=false) : String return untyped __call__('sha1_file', filename, raw_output);
	
	public static inline function sha1(str:String, raw_output=false) : String return untyped __call__('sha1', str, raw_output);
	
	public static inline function similar_text(first:String, second:String, ?percent:Float) : Int return untyped __call__('similar_text', first, second, percent);
	
	public static inline function soundex(str:String) : String return untyped __call__('soundex', str);
	
	public static inline function sprintf(format:String, ?args:Dynamic, ?restArgs:Dynamic) : String return untyped __call__('sprintf', format, args, restArgs);
	
	public static inline function sscanf(str:String, format:String, ?restArgs:Dynamic) : Dynamic return untyped __call__('sscanf', str, format, restArgs);
	
	public static inline function str_getcsv(input:String, delimiter=",", enclosure='"', escape="\\") : NativeArray return untyped __call__('str_getcsv', input, delimiter, enclosure, escape);
	
	public static inline function str_ireplace(search:Dynamic, replace:Dynamic, subject:Dynamic, ?count:Int) : Dynamic return untyped __call__('str_ireplace', search, replace, subject, count);
	
	public static inline function str_pad(input:String, pad_length:Int, pad_string=" ", ?pad_type:Int) : String return untyped __call__('str_pad', input, pad_length, pad_string, pad_type);
	
	public static inline function str_repeat(input:String, multiplier:Int) : String return untyped __call__('str_repeat', input, multiplier);
	
	public static inline function str_replace(search:Dynamic, replace:Dynamic, subject:Dynamic, ?count:Int) : Dynamic return untyped __call__('str_replace', search, replace, subject, count);
	
	public static inline function str_rot13(str:String) : String return untyped __call__('str_rot13', str);
	
	public static inline function str_shuffle(str:String) : String return untyped __call__('str_shuffle', str);
	
	public static inline function str_split(str:String, ?split_length:Int=1) : NativeArray return untyped __call__('str_split', str, split_length);
	
	public static inline function str_word_count(str:String, format=0, ?charlist:String) : Dynamic return untyped __call__('str_word_count', str, format, charlist);
	
	public static inline function strcasecmp(str1:String, str2:String) : Int return untyped __call__('strcasecmp', str1, str2);
	
	public static inline function strcmp(str1:String, str2:String) : Int return untyped __call__('strcmp', str1, str2);
	
	public static inline function strcoll(str1:String, str2:String) : Int return untyped __call__('strcoll', str1, str2);
	
	public static inline function strcspn(subject:String, mask:String, ?start:Int, ?length:Int) : Int return untyped __call__('strcspn', subject, mask, start, length);
	
	public static inline function strip_tags(str:String, ?allowable_tags:String) : String return untyped __call__('strip_tags', str, allowable_tags);
	
	public static inline function stripcslashes(str:String) : String return untyped __call__('stripcslashes', str);
	
	public static inline function stripos(haystack:String, needle:String, offset=0) : Dynamic return untyped __call__('stripos', haystack, needle, offset);
	
	public static inline function stripslashes(str:String) : String return untyped __call__('stripslashes', str);
	
	public static inline function stristr(haystack:String, needle:Dynamic, before_needle=false) : String return untyped __call__('stristr', haystack, needle, before_needle);
	
	public static inline function strlen(str:String) : Int return untyped __call__('strlen', str);
	
	public static inline function strnatcasecmp(str1:String, str2:String) : Int return untyped __call__('strnatcasecmp', str1, str2);
	
	public static inline function strnatcmp(str1:String, str2:String) : Int return untyped __call__('strnatcmp', str1, str2);
	
	public static inline function strncasecmp(str1:String, str2:String, len:Int) : Int return untyped __call__('strncasecmp', str1, str2, len);
	
	public static inline function strncmp(str1:String, str2:String, len:Int) : Int return untyped __call__('strncmp', str1, str2, len);
	
	public static inline function strpbrk(haystack:String, char_list:String) : String return untyped __call__('strpbrk', haystack, char_list);
	
	public static inline function strpos(haystack:String, needle:Dynamic, offset=0) : Dynamic return untyped __call__('strpos', haystack, needle, offset);
	
	public static inline function strrchr(haystack:String, needle:Dynamic) : String return untyped __call__('strrchr', haystack, needle);
	
	public static inline function strrev(str:String) : String return untyped __call__('strrev', str);
	
	public static inline function strripos(haystack:String, needle:String, offset=0) : Int return untyped __call__('strripos', haystack, needle, offset);
	
	public static inline function strrpos(haystack:String, needle:String, offset=0) : Int return untyped __call__('strrpos', haystack, needle, offset);
	
	public static inline function strspn(subject:String, mask:String, ?start:Int, ?length:Int) : Int return untyped __call__('strspn', subject, mask, start, length);
	
	public static inline function strstr(haystack:String, needle:Dynamic, before_needle=false) : String return untyped __call__('strstr', haystack, needle, before_needle);
	
	public static inline function strtok(str:String, token:String) : String return untyped __call__('strtok', str, token);
	
	public static inline function strtolower(str:String) : String return untyped __call__('strtolower', str);
	
	public static inline function strtoupper(str:String) : String return untyped __call__('strtoupper', str);
	
	public static inline function strtr(str:String, from:String, to:String) : String return untyped __call__('strtr', str, from, to);
	
	public static inline function substr_compare(main_str:String, str:String, offset:Int, ?length:Int, case_insensitivity=false) : Int return untyped __call__('substr_compare', main_str, str, offset, length, case_insensitivity);
	
	public static inline function substr_count(haystack:String, needle:String, offset=0, ?length:Int) : Int return untyped __call__('substr_count', haystack, needle, offset, length);
	
	public static inline function substr_replace(str:Dynamic, replacement:Dynamic, start:Dynamic, ?length:Dynamic) : Dynamic return untyped __call__('substr_replace', str, replacement, start, length);
	
	public static inline function substr(str:String, start:Int, ?length:Int) : String return untyped __call__('substr', str, start, length);
	
	public static inline function trim(str:String, character_mask=" \t\n\r\x00\x0B") : String return untyped __call__('trim', str, character_mask);
	
	public static inline function ucfirst(str:String) : String return untyped __call__('ucfirst', str);
	
	public static inline function ucwords(str:String, ?delimiters:String) : String return untyped __call__('ucwords', str, delimiters);
	
	public static inline function vfprintf(handle:Resource, format:String, args:NativeArray) : Int return untyped __call__('vfprintf', handle, format, args);
	
	public static inline function vprintf(format:String, args:NativeArray) : Int return untyped __call__('vprintf', format, args);
	
	public static inline function vsprintf(format:String, args:NativeArray) : String return untyped __call__('vsprintf', format, args);
	
	public static inline function wordwrap(str:String, width=75, break_="\n", ?cut:Bool) : String return untyped __call__('wordwrap', str, width, break_, cut);
}
