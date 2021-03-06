package php;

class StringsNatives
{
	/**
	 * Will convert double-quotes and leave single-quotes alone.
	 */
	public static var ENT_COMPAT(get, never) : Int; private static inline function get_ENT_COMPAT() : Int return untyped __php__("ENT_COMPAT");

	/**
	 * Will convert both double and single quotes.
	 */
	public static var ENT_QUOTES(get, never) : Int; private static inline function get_ENT_QUOTES() : Int return untyped __php__("ENT_QUOTES");

	/**
	 * Will leave both double and single quotes unconverted.
	 */
	public static var ENT_NOQUOTES(get, never) : Int; private static inline function get_ENT_NOQUOTES() : Int return untyped __php__("ENT_NOQUOTES");

	/**
	 * Silently discard invalid code unit sequences instead of returning an empty string. Using this flag is discouraged as it » may have security implications.
	 */
	public static var ENT_IGNORE(get, never) : Int; private static inline function get_ENT_IGNORE() : Int return untyped __php__("ENT_IGNORE");

	/**
	 * Replace invalid code unit sequences with a Unicode Replacement Character U+FFFD (UTF-8) or &#FFFD; (otherwise) instead of returning an empty string.
	 */
	public static var ENT_SUBSTITUTE(get, never) : Int; private static inline function get_ENT_SUBSTITUTE() : Int return untyped __php__("ENT_SUBSTITUTE");

	/**
	 * Replace invalid code points for the given document type with a Unicode Replacement Character U+FFFD (UTF-8) or &#FFFD; (otherwise) instead of leaving them as is. This may be useful, for instance, to ensure the well-formedness of XML documents with embedded external content.
	 */
	public static var ENT_DISALLOWED(get, never) : Int; private static inline function get_ENT_DISALLOWED() : Int return untyped __php__("ENT_DISALLOWED");

	/**
	 * Handle code as HTML 4.01.
	 */
	public static var ENT_HTML401(get, never) : Int; private static inline function get_ENT_HTML401() : Int return untyped __php__("ENT_HTML401");

	/**
	 * Handle code as XML 1.
	 */
	public static var ENT_XML1(get, never) : Int; private static inline function get_ENT_XML1() : Int return untyped __php__("ENT_XML1");

	/**
	 * Handle code as XHTML.
	 */
	public static var ENT_XHTML(get, never) : Int; private static inline function get_ENT_XHTML() : Int return untyped __php__("ENT_XHTML");

	/**
	 * Handle code as HTML 5. 
	 */
	public static var ENT_HTML5(get, never) : Int; private static inline function get_ENT_HTML5() : Int return untyped __php__("ENT_HTML5");
	
	public static inline function addcslashes(str:String, charlist:String) : String return untyped __call__('addcslashes', str, charlist);
	
	public static inline function addslashes(str:String) : String return untyped __call__('addslashes', str);
	
	public static inline function bin2hex(str:String) : String return untyped __call__('bin2hex', str);
	
	public static inline function chr(ascii:Int) : String return untyped __call__('chr', ascii);
	
	public static inline function chunk_split(body:String, chunklen=76, end="\r\n") : String return untyped __call__('chunk_split', body, chunklen, end);
	
	public static inline function convert_cyr_string(str:String, from:String, to:String) : String return untyped __call__('convert_cyr_string', str, from, to);
	
	public static inline function convert_uudecode(data:String) : String return untyped __call__('convert_uudecode', data);
	
	public static inline function convert_uuencode(data:String) : String return untyped __call__('convert_uuencode', data);
	
	public static inline function count_chars(str:String, mode=0) : Dynamic return untyped __call__('count_chars', str, mode);
	
	public static inline function crc32(str:String) : Int return untyped __call__('crc32', str);
	
	public static function crypt(str:String, ?salt:String) : String
	{
		if (salt == null)
		{
			return untyped __call__('crypt', str);
		}
		else
		{
			return untyped __call__('crypt', str, salt);
		}
	}
	
	public static inline function echo(arg:String) : Void untyped __call__('echo', arg);
	
	public static function explode(delimiter:String, str:String, ?limit:Int) : NativeArray
	{
		if (limit == null)
		{
			return untyped __call__('explode', delimiter, str);
		}
		else
		{
			return untyped __call__('explode', delimiter, str, limit);
		}
	}
	
	public static function fprintf(handle:Resource, format:String, ?args:Dynamic, ?restArgs:Dynamic) : Int
	{
		if (restArgs == null)
		{
			if (args == null)
			{
				return untyped __call__('fprintf', handle, format);
			}
			else
			{
				return untyped __call__('fprintf', handle, format, args);
			}
		}
		else
		{
			return untyped __call__('fprintf', handle, format, args, restArgs);
		}
	}
	
	public static function get_html_translation_table(?table:Int, ?flags:Int, encoding="UTF-8") : NativeArray
	{
		if (flags == null)
		{
			if (table == null)
			{
				return untyped __call__('get_html_translation_table');
			}
			else
			{
				return untyped __call__('get_html_translation_table', table);
			}
		}
		else
		{
			return untyped __call__('get_html_translation_table', table, flags, encoding);
		}
	}
	
	public static inline function hebrev(hebrew_text:String, max_chars_per_line=0) : String return untyped __call__('hebrev', hebrew_text, max_chars_per_line);
	
	public static inline function hebrevc(hebrew_text:String, max_chars_per_line=0) : String return untyped __call__('hebrevc', hebrew_text, max_chars_per_line);
	
	public static inline function hex2bin(data:String) : String return untyped __call__('hex2bin', data);
	
	public static function html_entity_decode(str:String, ?flags:Int, ?encoding:String) : String
	{
		if (encoding == null)
		{
			if (flags == null)
			{
				return untyped __call__('html_entity_decode', str);
			}
			else
			{
				return untyped __call__('html_entity_decode', str, flags);
			}
		}
		else
		{
			return untyped __call__('html_entity_decode', str, flags, encoding);
		}
	}
	
	public static function htmlentities(str:String, ?flags:Int, ?encoding:String, ?double_encode:Bool) : String
	{
		if (double_encode == null)
		{
			if (encoding == null)
			{
				if (flags == null)
				{
					return untyped __call__('htmlentities', str);
				}
				else
				{
					return untyped __call__('htmlentities', str, flags);
				}
			}
			else
			{
				return untyped __call__('htmlentities', str, flags, encoding);
			}
		}
		else
		{
			return untyped __call__('htmlentities', str, flags, encoding, double_encode);
		}
	}
	
	public static function htmlspecialchars_decode(str:String, ?flags:Int) : String
	{
		if (flags == null)
		{
			return untyped __call__('htmlspecialchars_decode', str);
		}
		else
		{
			return untyped __call__('htmlspecialchars_decode', str, flags);
		}
	}
	
	public static function htmlspecialchars(str:String, ?flags:Int, ?encoding:String, ?double_encode:Bool) : String return untyped
	{
		if (double_encode == null)
		{
			if (encoding == null)
			{
				if (flags == null)
				{
					return untyped __call__('htmlspecialchars', str);
				}
				else
				{
					return untyped __call__('htmlspecialchars', str, flags);
				}
			}
			else
			{
				return untyped __call__('htmlspecialchars', str, flags, encoding);
			}
		}
		else
		{
			return untyped __call__('htmlspecialchars', str, flags, encoding, double_encode);
		}
	}
	
	public static inline function implode(glue="", pieces:NativeArray) : String return untyped __call__('implode', glue, pieces);
	
	public static inline function lcfirst(str:String) : String return untyped __call__('lcfirst', str);
	
	public static inline function levenshtein(str1:String, str2:String) : Int return untyped __call__('levenshtein', str1, str2);
	
	public static inline function localeconv() : NativeArray return untyped __call__('localeconv');
	
	public static function ltrim(str:String, ?character_mask:String) : String
	{
		if (character_mask == null)
		{
			return untyped __call__('ltrim', str);
		}
		else
		{
			return untyped __call__('ltrim', str, character_mask);
		}
	}
	
	public static inline function md5_file(filename:String, raw_output=false) : String return untyped __call__('md5_file', filename, raw_output);
	
	public static inline function md5(str:String, raw_output=false) : String return untyped __call__('md5', str, raw_output);
	
	public static inline function metaphone(str:String, phonemes=0) : String return untyped __call__('metaphone', str, phonemes);
	
	public static inline function money_format(format:String, number:Float) : String return untyped __call__('money_format', format, number);
	
	public static inline function nl_langinfo(item:Int) : String return untyped __call__('nl_langinfo', item);
	
	public static inline function nl2br(str:String, is_xhtml=true) : String return untyped __call__('nl2br', str, is_xhtml);
	
	public static inline function number_format(number:Float, decimals=0) : String return untyped __call__('number_format', number, decimals);
	
	public static inline function ord(str:String) : Int return untyped __call__('ord', str);
	
	public static function parse_str(str:String, ?arr:NativeArray) : Void
	{
		if (arr == null)
		{
			untyped __call__('parse_str', str);
		}
		else
		{
			untyped __call__('parse_str', str, arr);
		}
	}
	
	public static inline function print(arg:String) : Int return untyped __call__('print', arg);
	
	public static function printf(format:String, ?args:Dynamic, ?restArgs:Dynamic) : Int
	{
		if (restArgs == null)
		{
			if (args == null)
			{
				return untyped __call__('printf', format);
			}
			else
			{
				return untyped __call__('printf', format, args);
			}
		}
		else
		{
			return untyped __call__('printf', format, args, restArgs);
		}
	}
	
	public static inline function quoted_printable_decode(str:String) : String return untyped __call__('quoted_printable_decode', str);
	
	public static inline function quoted_printable_encode(str:String) : String return untyped __call__('quoted_printable_encode', str);
	
	public static inline function quotemeta(str:String) : String return untyped __call__('quotemeta', str);
	
	public static function rtrim(str:String, ?character_mask:String) : String
	{
		if (character_mask == null)
		{
			return untyped __call__('rtrim', str);
		}
		else
		{
			return untyped __call__('rtrim', str, character_mask);
		}
	}
	
	public static function setlocale(category:Int, locale:String, ?restArgs:String) : String
	{
		if (restArgs == null)
		{
			return untyped __call__('setlocale', category, locale);
		}
		else
		{
			return untyped __call__('setlocale', category, locale, restArgs);
		}
	}
	
	public static inline function sha1_file(filename:String, raw_output=false) : String return untyped __call__('sha1_file', filename, raw_output);
	
	public static inline function sha1(str:String, raw_output=false) : String return untyped __call__('sha1', str, raw_output);
	
	public static function similar_text(first:String, second:String, ?percent:Float) : Int
	{
		if (percent == null)
		{
			return untyped __call__('similar_text', first, second);
		}
		else
		{
			return untyped __call__('similar_text', first, second, percent);
		}
	}
	
	public static inline function soundex(str:String) : String return untyped __call__('soundex', str);
	
	public static function sprintf(format:String, ?args:Dynamic, ?restArgs:Dynamic) : String
	{
		if (restArgs == null)
		{
			if (args == null)
			{
				return untyped __call__('sprintf', format);
			}
			else
			{
				return untyped __call__('sprintf', format, args);
			}
		}
		else
		{
			return untyped __call__('sprintf', format, args, restArgs);
		}
	}
	
	public static function sscanf(str:String, format:String, ?restArgs:Dynamic) : Dynamic
	{
		if (restArgs == null)
		{
			return untyped __call__('sscanf', str, format);
		}
		else
		{
			return untyped __call__('sscanf', str, format, restArgs);
		}
	}
	
	public static inline function str_getcsv(input:String, delimiter=",", enclosure='"', escape="\\") : NativeArray return untyped __call__('str_getcsv', input, delimiter, enclosure, escape);
	
	public static function str_ireplace(search:Dynamic, replace:Dynamic, subject:Dynamic, ?count:Int) : Dynamic
	{
		if (count == null)
		{
			return untyped __call__('str_ireplace', search, replace, subject);
		}
		else
		{
			return untyped __call__('str_ireplace', search, replace, subject, count);
		}
	}
	
	public static function str_pad(input:String, pad_length:Int, pad_string=" ", ?pad_type:Int) : String
	{
		if (pad_type == null)
		{
			return untyped __call__('str_pad', input, pad_length, pad_string);
		}
		else
		{
			return untyped __call__('str_pad', input, pad_length, pad_string, pad_type);
		}
	}
	
	public static inline function str_repeat(input:String, multiplier:Int) : String return untyped __call__('str_repeat', input, multiplier);
	
	public static function str_replace(search:Dynamic, replace:Dynamic, subject:Dynamic, ?count:Int) : Dynamic
	{
		if (count == null)
		{
			return untyped __call__('str_replace', search, replace, subject);
		}
		else
		{
			return untyped __call__('str_replace', search, replace, subject, count);
		}
	}
	
	public static inline function str_rot13(str:String) : String return untyped __call__('str_rot13', str);
	
	public static inline function str_shuffle(str:String) : String return untyped __call__('str_shuffle', str);
	
	public static inline function str_split(str:String, split_length=1) : NativeArray return untyped __call__('str_split', str, split_length);
	
	public static function str_word_count(str:String, format=0, ?charlist:String) : Dynamic
	{
		if (charlist == null)
		{
			return untyped __call__('str_word_count', str, format);
		}
		else
		{
			return untyped __call__('str_word_count', str, format, charlist);
		}
	}
	
	public static inline function strcasecmp(str1:String, str2:String) : Int return untyped __call__('strcasecmp', str1, str2);
	
	public static inline function strcmp(str1:String, str2:String) : Int return untyped __call__('strcmp', str1, str2);
	
	public static inline function strcoll(str1:String, str2:String) : Int return untyped __call__('strcoll', str1, str2);
	
	public static function strcspn(subject:String, mask:String, ?start:Int, ?length:Int) : Int
	{
		if (length == null)
		{
			if (start == null)
			{
				return untyped __call__('strcspn', subject, mask);
			}
			else
			{
				return untyped __call__('strcspn', subject, mask, start);
			}
		}
		else
		{
			return untyped __call__('strcspn', subject, mask, start, length);
		}
	}
	
	public static function strip_tags(str:String, ?allowable_tags:String) : String
	{
		if (allowable_tags == null)
		{
			return untyped __call__('strip_tags', str);
		}
		else
		{
			return untyped __call__('strip_tags', str, allowable_tags);
		}
	}
	
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
	
	public static function strspn(subject:String, mask:String, ?start:Int, ?length:Int) : Int
	{
		if (length == null)
		{
			if (start == null)
			{
				return untyped __call__('strspn', subject, mask);
			}
			else
			{
				return untyped __call__('strspn', subject, mask, start);
			}
		}
		else
		{
			return untyped __call__('strspn', subject, mask, start, length);
		}
	}
	
	public static inline function strstr(haystack:String, needle:Dynamic, before_needle=false) : String return untyped __call__('strstr', haystack, needle, before_needle);
	
	public static inline function strtok(str:String, token:String) : String return untyped __call__('strtok', str, token);
	
	public static inline function strtolower(str:String) : String return untyped __call__('strtolower', str);
	
	public static inline function strtoupper(str:String) : String return untyped __call__('strtoupper', str);
	
	public static inline function strtr(str:String, from:String, to:String) : String return untyped __call__('strtr', str, from, to);
	public static inline function strtr_arr(str:String, replace_pairs:TypedArray<String, String>) : String return untyped __call__('strtr', str, replace_pairs);
	
	public static function substr_compare(main_str:String, str:String, offset:Int, ?length:Int, case_insensitivity=false) : Int
	{
		if (length == null)
		{
			return untyped __call__('substr_compare', main_str, str, offset);
		}
		else
		{
			return untyped __call__('substr_compare', main_str, str, offset, length, case_insensitivity);
		}
	}
	
	public static function substr_count(haystack:String, needle:String, offset=0, ?length:Int) : Int
	{
		if (length == null)
		{
			return untyped __call__('substr_count', haystack, needle, offset);
		}
		else
		{
			return untyped __call__('substr_count', haystack, needle, offset, length);
		}
	}
	
	public static function substr_replace(str:Dynamic, replacement:Dynamic, start:Dynamic, ?length:Dynamic) : Dynamic
	{
		if (length == null)
		{
			return untyped __call__('substr_replace', str, replacement, start);
		}
		else
		{
			return untyped __call__('substr_replace', str, replacement, start, length);
		}
	}
	
	public static function substr(str:String, start:Int, ?length:Int) : String
	{
		if (length == null)
		{
			return untyped __call__('substr', str, start);
		}
		else
		{
			return untyped __call__('substr', str, start, length);
		}
	}
	
	public static inline function trim(str:String, character_mask=" \t\n\r\x00\x0B") : String return untyped __call__('trim', str, character_mask);
	
	public static inline function ucfirst(str:String) : String return untyped __call__('ucfirst', str);
	
	public static function ucwords(str:String, ?delimiters:String) : String
	{
		if (delimiters == null)
		{
			return untyped __call__('ucwords', str);
		}
		else
		{
			return untyped __call__('ucwords', str, delimiters);
		}
	}
	
	public static inline function vfprintf(handle:Resource, format:String, args:NativeArray) : Int return untyped __call__('vfprintf', handle, format, args);
	
	public static inline function vprintf(format:String, args:NativeArray) : Int return untyped __call__('vprintf', format, args);
	
	public static inline function vsprintf(format:String, args:NativeArray) : String return untyped __call__('vsprintf', format, args);
	
	public static function wordwrap(str:String, width=75, break_="\n", ?cut:Bool) : String
	{
		if (cut == null)
		{
			return untyped __call__('wordwrap', str, width, break_);
		}
		else
		{
			return untyped __call__('wordwrap', str, width, break_, cut);
		}
	}
}
