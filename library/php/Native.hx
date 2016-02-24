package php;

import php.NativeArray;

class Native
{
	//{ array
	
	public static inline function array_change_key_case(arr:NativeArray, ?case:Int=CASE_LOWER) : NativeArray return untyped __call__('array_change_key_case', arr, case_);
	public static inline function is_array(var_:Dynamic) : Bool return untyped __call__('is_array', var_);
	public static inline function explode(delimiter:String, str:String, ?limit:Int=PHP_INT_MAX) : NativeArray return untyped __call__('explode', delimiter, str, limit);
	public static inline function implode(glue:String, pieces:NativeArray) : String return untyped __call__('implode', glue, pieces);
	public static inline function split(pattern:String, str:String, ?limit:Int=-1) : NativeArray return untyped __call__('split', pattern, str, limit);
	public static inline function preg_split(pattern:String, subject:String, ?limit:Int=-1, flags=0) : NativeArray return untyped __call__('preg_split', pattern, subject, limit, flags);
	public static inline function unset(var_:Dynamic, restArgs:Dynamic) : Void return untyped __call__('unset', var_, restArgs);
	public static inline function array_chunk(arr:NativeArray, size:Int, ?preserve_keys:Bool=false) : NativeArray return untyped __call__('array_chunk', arr, size, preserve_keys);
	public static inline function array_column(input:NativeArray, column_key:Dynamic, ?index_key:Dynamic=null) : NativeArray return untyped __call__('array_column', input, column_key, index_key);
	public static inline function array_combine(keys:NativeArray, values:NativeArray) : NativeArray return untyped __call__('array_combine', keys, values);
	public static inline function array_count_values(arr:NativeArray) : NativeArray return untyped __call__('array_count_values', arr);
	public static inline function array_diff_assoc(array1:NativeArray, array2:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_diff_assoc', array1, array2, restArgs);
	public static inline function array_diff_key(array1:NativeArray, array2:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_diff_key', array1, array2, restArgs);
	public static inline function array_diff_uassoc(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , key_compare_func:Dynamic->Dynamic->Int) : NativeArray return untyped __call__('array_diff_uassoc', array1, array2, restArgs, key_compare_func);
	public static inline function array_diff_ukey(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , key_compare_func:Dynamic->Dynamic->Int) : NativeArray return untyped __call__('array_diff_ukey', array1, array2, restArgs, key_compare_func);
	public static inline function array_diff(array1:NativeArray, array2:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_diff', array1, array2, restArgs);
	public static inline function array_fill_keys(keys:NativeArray, value:Dynamic) : NativeArray return untyped __call__('array_fill_keys', keys, value);
	public static inline function array_fill(start_index:Int, num:Int, value:Dynamic) : NativeArray return untyped __call__('array_fill', start_index, num, value);
	public static inline function array_filter(arr:NativeArray, ?callback:callable, flag=0) : NativeArray return untyped __call__('array_filter', arr, callback, flag);
	public static inline function array_flip(arr:NativeArray) : NativeArray return untyped __call__('array_flip', arr);
	public static inline function array_intersect_assoc(array1:NativeArray, array2:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_intersect_assoc', array1, array2, restArgs);
	public static inline function array_intersect_key(array1:NativeArray, array2:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_intersect_key', array1, array2, restArgs);
	public static inline function array_intersect_uassoc(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , key_compare_func:Dynamic->Dynamic->Int) : NativeArray return untyped __call__('array_intersect_uassoc', array1, array2, restArgs, key_compare_func);
	public static inline function array_intersect_ukey(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , key_compare_func:Dynamic->Dynamic->Int) : NativeArray return untyped __call__('array_intersect_ukey', array1, array2, restArgs, key_compare_func);
	public static inline function array_intersect(array1:NativeArray, array2:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_intersect', array1, array2, restArgs);
	public static inline function array_key_exists(key:Dynamic, arr:NativeArray) : Bool return untyped __call__('array_key_exists', key, arr);
	public static inline function array_keys(arr:NativeArray, ?search_value:Dynamic=null, ?strict:Bool=false) : NativeArray return untyped __call__('array_keys', arr, search_value, strict);
	public static inline function array_map(callback:callable, array1:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_map', callback, array1, restArgs);
	public static inline function array_merge_recursive(array1:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_merge_recursive', array1, restArgs);
	public static inline function array_merge(array1:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_merge', array1, restArgs);
	public static inline function array_multisort(array1:NativeArray, ?array1_sort_order:Dynamic=SORT_ASC, ?array1_sort_flags:Dynamic=SORT_REGULAR, restArgs:Dynamic) : Bool return untyped __call__('array_multisort', array1:NativeArray, array1_sort_order, array1_sort_flags, restArgs);
	public static inline function array_pad(arr:NativeArray, size:Int, value:Dynamic) : NativeArray return untyped __call__('array_pad', arr, size, value);
	public static inline function array_pop(arr:NativeArray) : Dynamic return untyped __call__('array_pop', arr:NativeArray);
	public static inline function array_product(arr:NativeArray) : number return untyped __call__('array_product', arr);
	public static inline function array_push(arr:NativeArray, value1:Dynamic, restArgs:Dynamic) : Int return untyped __call__('array_push', arr:NativeArray, value1, restArgs);
	public static inline function array_rand(arr:NativeArray, ?num:Int=1) : Dynamic return untyped __call__('array_rand', arr, num);
	public static inline function array_reduce(arr:NativeArray, callback:Dynamic->Dynamic->Dynamic, ?initial:Dynamic) : Dynamic return untyped __call__('array_reduce', arr, callback, initial);
	public static inline function array_replace_recursive(array1:NativeArray, array2:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_replace_recursive', array1, array2, restArgs);
	public static inline function array_replace(array1:NativeArray, array2:NativeArray, restArgs:NativeArray) : NativeArray return untyped __call__('array_replace', array1, array2, restArgs);
	public static inline function array_reverse(arr:NativeArray, ?preserve_keys:Bool=false) : NativeArray return untyped __call__('array_reverse', arr, preserve_keys);
	public static inline function array_search(needle:Dynamic, haystack:NativeArray, ?strict:Bool=false) : Dynamic return untyped __call__('array_search', needle, haystack, strict);
	public static inline function array_shift(arr:NativeArray) : Dynamic return untyped __call__('array_shift', arr:NativeArray);
	public static inline function array_slice(arr:NativeArray, offset:Int, ?length:Int, ?preserve_keys:Bool=false) : NativeArray return untyped __call__('array_slice', arr, offset, length, preserve_keys);
	public static inline function array_splice(input:NativeArray, offset:Int, length=0, ?replacement:Dynamic=EMPTY_ARRAY) : NativeArray return untyped __call__('array_splice', input:NativeArray, offset, length, replacement);
	public static inline function array_sum(arr:NativeArray) : number return untyped __call__('array_sum', arr);
	public static inline function array_udiff_assoc(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , value_compare_func:Dynamic->Dynamic->Int) : NativeArray return untyped __call__('array_udiff_assoc', array1, array2, restArgs, value_compare_func);
	public static inline function array_udiff_uassoc(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , value_compare_func:Dynamic->Dynamic->Int, key_compare_func:callable) : NativeArray return untyped __call__('array_udiff_uassoc', array1, array2, restArgs, value_compare_func, key_compare_func);
	public static inline function array_udiff(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , value_compare_func:Dynamic->Dynamic->Int) : NativeArray return untyped __call__('array_udiff', array1, array2, restArgs, value_compare_func);
	public static inline function array_uintersect_assoc(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , value_compare_func:Dynamic->Dynamic->Int) : NativeArray return untyped __call__('array_uintersect_assoc', array1, array2, restArgs, value_compare_func);
	public static inline function array_uintersect_uassoc(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , value_compare_func:Dynamic->Dynamic->Int, key_compare_func:callable) : NativeArray return untyped __call__('array_uintersect_uassoc', array1, array2, restArgs, value_compare_func, key_compare_func);
	public static inline function array_uintersect(array1:NativeArray, array2:NativeArray, restArgs:NativeArray , value_compare_func:Dynamic->Dynamic->Int) : NativeArray return untyped __call__('array_uintersect', array1, array2, restArgs, value_compare_func);
	public static inline function array_unique(arr:NativeArray, ?sort_flags:Int=SORT_STRING) : NativeArray return untyped __call__('array_unique', arr, sort_flags);
	public static inline function array_unshift(arr:NativeArray, value1:Dynamic, restArgs:Dynamic) : Int return untyped __call__('array_unshift', arr:NativeArray, value1, restArgs);
	public static inline function array_values(arr:NativeArray) : NativeArray return untyped __call__('array_values', arr);
	public static inline function array_walk_recursive(arr:NativeArray, callback:callable, ?userdata:Dynamic) : Bool return untyped __call__('array_walk_recursive', arr:NativeArray, callback, userdata);
	public static inline function array_walk(arr:NativeArray, callback:callable, ?userdata:Dynamic) : Bool return untyped __call__('array_walk', arr:NativeArray, callback, userdata);
	public static inline function array(restArgs:Dynamic) : NativeArray return untyped __call__('array', restArgs);
	public static inline function arsort(arr:NativeArray, ?sort_flags:Int=SORT_REGULAR) : Bool return untyped __call__('arsort', arr:NativeArray, sort_flags);
	public static inline function asort(arr:NativeArray, ?sort_flags:Int=SORT_REGULAR) : Bool return untyped __call__('asort', arr:NativeArray, sort_flags);
	public static inline function compact(varname1:Dynamic, restArgs:Dynamic) : NativeArray return untyped __call__('compact', varname1, restArgs);
	public static inline function count(array_or_countable:Dynamic, ?mode:Int=COUNT_NORMAL) : Int return untyped __call__('count', array_or_countable, mode);
	public static inline function current(arr:NativeArray) : Dynamic return untyped __call__('current', arr:NativeArray);
	public static inline function each(arr:NativeArray) : NativeArray return untyped __call__('each', arr:NativeArray);
	public static inline function end(arr:NativeArray) : Dynamic return untyped __call__('end', arr:NativeArray);
	public static inline function extract(arr:NativeArray, ?flags:Int=EXTR_OVERWRITE, ?prefix:String) : Int return untyped __call__('extract', arr:NativeArray, flags, prefix);
	public static inline function in_array(needle:Dynamic, haystack:NativeArray, ?strict:Bool=FALSE) : Bool return untyped __call__('in_array', needle, haystack, strict);
	public static inline function key(arr:NativeArray) : Dynamic return untyped __call__('key', arr:NativeArray);
	public static inline function krsort(arr:NativeArray, ?sort_flags:Int=SORT_REGULAR) : Bool return untyped __call__('krsort', arr:NativeArray, sort_flags);
	public static inline function ksort(arr:NativeArray, ?sort_flags:Int=SORT_REGULAR) : Bool return untyped __call__('ksort', arr:NativeArray, sort_flags);
	public static inline function list(var1:Dynamic, restArgs:Dynamic) : NativeArray return untyped __call__('list', var1, restArgs);
	public static inline function natcasesort(arr:NativeArray) : Bool return untyped __call__('natcasesort', arr:NativeArray);
	public static inline function natsort(arr:NativeArray) : Bool return untyped __call__('natsort', arr:NativeArray);
	public static inline function next(arr:NativeArray) : Dynamic return untyped __call__('next', arr:NativeArray);
	public static inline function prev(arr:NativeArray) : Dynamic return untyped __call__('prev', arr:NativeArray);
	public static inline function range(start:Dynamic, end:Dynamic, ?step:number=1) : NativeArray return untyped __call__('range', start, end, step);
	public static inline function reset(arr:NativeArray) : Dynamic return untyped __call__('reset', arr:NativeArray);
	public static inline function rsort(arr:NativeArray, ?sort_flags:Int=SORT_REGULAR) : Bool return untyped __call__('rsort', arr:NativeArray, sort_flags);
	public static inline function shuffle(arr:NativeArray) : Bool return untyped __call__('shuffle', arr:NativeArray);
	public static inline function sort(arr:NativeArray, ?sort_flags:Int=SORT_REGULAR) : Bool return untyped __call__('sort', arr:NativeArray, sort_flags);
	public static inline function uasort(arr:NativeArray, value_compare_func:callable) : Bool return untyped __call__('uasort', arr:NativeArray, value_compare_func);
	public static inline function uksort(arr:NativeArray, key_compare_func:Dynamic->Dynamic->Int) : Bool return untyped __call__('uksort', arr:NativeArray, key_compare_func);
	public static inline function usort(arr:NativeArray, value_compare_func:Dynamic->Dynamic->Int) : Bool return untyped __call__('usort', arr:NativeArray, value_compare_func);
	
	//}
	
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
	
	//{ imap
	
	public static inline function imap_8bit(str:String) : String return untyped __call__('imap_8bit', str);
	public static inline function imap_alerts() : NativeArray return untyped __call__('imap_alerts', void);
	public static inline function imap_append(imap_stream:Resource, mailbox:String, message:String, ?options:String, ?internal_date:String) : Bool return untyped __call__('imap_append', imap_stream, mailbox, message, options, internal_date);
	public static inline function imap_base64(text:String) : String return untyped __call__('imap_base64', text);
	public static inline function imap_binary(str:String) : String return untyped __call__('imap_binary', str);
	public static inline function imap_body(imap_stream:Resource, msg_number:Int, options=0) : String return untyped __call__('imap_body', imap_stream, msg_number, options);
	public static inline function imap_bodystruct(imap_stream:Resource, msg_number:Int, section:String) : Dynamic return untyped __call__('imap_bodystruct', imap_stream, msg_number, section);
	public static inline function imap_check(imap_stream:Resource) : Dynamic return untyped __call__('imap_check', imap_stream);
	public static inline function imap_clearflag_full(imap_stream:Resource, sequence:String, flag:String, options=0) : Bool return untyped __call__('imap_clearflag_full', imap_stream, sequence, flag, options);
	public static inline function imap_close(imap_stream:Resource, flag=0) : Bool return untyped __call__('imap_close', imap_stream, flag);
	public static inline function imap_createmailbox(imap_stream:Resource, mailbox:String) : Bool return untyped __call__('imap_createmailbox', imap_stream, mailbox);
	public static inline function imap_delete(imap_stream:Resource, msg_number:Int, options=0) : Bool return untyped __call__('imap_delete', imap_stream, msg_number, options);
	public static inline function imap_deletemailbox(imap_stream:Resource, mailbox:String) : Bool return untyped __call__('imap_deletemailbox', imap_stream, mailbox);
	public static inline function imap_errors() : NativeArray return untyped __call__('imap_errors', void);
	public static inline function imap_expunge(imap_stream:Resource) : Bool return untyped __call__('imap_expunge', imap_stream);
	public static inline function imap_fetch_overview(imap_stream:Resource, sequence:String, options=0) : NativeArray return untyped __call__('imap_fetch_overview', imap_stream, sequence, options);
	public static inline function imap_fetchbody(imap_stream:Resource, msg_number:Int, section:String, options=0) : String return untyped __call__('imap_fetchbody', imap_stream, msg_number, section, options);
	public static inline function imap_fetchheader(imap_stream:Resource, msg_number:Int, options=0) : String return untyped __call__('imap_fetchheader', imap_stream, msg_number, options);
	public static inline function imap_fetchmime(imap_stream:Resource, msg_number:Int, section:String, options=0) : String return untyped __call__('imap_fetchmime', imap_stream, msg_number, section, options);
	public static inline function imap_fetchstructure(imap_stream:Resource, msg_number:Int, options=0) : Dynamic return untyped __call__('imap_fetchstructure', imap_stream, msg_number, options);
	public static inline function imap_gc(imap_stream:Resource, caches:Int) : Bool return untyped __call__('imap_gc', imap_stream, caches);
	public static inline function imap_get_quota(imap_stream:Resource, quota_root:String) : NativeArray return untyped __call__('imap_get_quota', imap_stream, quota_root);
	public static inline function imap_get_quotaroot(imap_stream:Resource, quota_root:String) : NativeArray return untyped __call__('imap_get_quotaroot', imap_stream, quota_root);
	public static inline function imap_getacl(imap_stream:Resource, mailbox:String) : NativeArray return untyped __call__('imap_getacl', imap_stream, mailbox);
	public static inline function imap_getmailboxes(imap_stream:Resource, ref:String, pattern:String) : NativeArray return untyped __call__('imap_getmailboxes', imap_stream, ref, pattern);
	public static inline function imap_getsubscribed(imap_stream:Resource, ref:String, pattern:String) : NativeArray return untyped __call__('imap_getsubscribed', imap_stream, ref, pattern);
	public static inline function imap_headerinfo(imap_stream:Resource, msg_number:Int, fromlength=0, subjectlength=0, ?defaulthost:String) : Dynamic return untyped __call__('imap_headerinfo', imap_stream, msg_number, fromlength, subjectlength, defaulthost);
	public static inline function imap_headers(imap_stream:Resource) : NativeArray return untyped __call__('imap_headers', imap_stream);
	public static inline function imap_last_error() : String return untyped __call__('imap_last_error', void);
	public static inline function imap_list(imap_stream:Resource, ref:String, pattern:String) : NativeArray return untyped __call__('imap_list', imap_stream, ref, pattern);
	public static inline function imap_listscan(imap_stream:Resource, ref:String, pattern:String, content:String) : NativeArray return untyped __call__('imap_listscan', imap_stream, ref, pattern, content);
	public static inline function imap_lsub(imap_stream:Resource, ref:String, pattern:String) : NativeArray return untyped __call__('imap_lsub', imap_stream, ref, pattern);
	public static inline function imap_mail_compose(envelope:NativeArray, body:NativeArray) : String return untyped __call__('imap_mail_compose', envelope, body);
	public static inline function imap_mail_copy(imap_stream:Resource, msglist:String, mailbox:String, options=0) : Bool return untyped __call__('imap_mail_copy', imap_stream, msglist, mailbox, options);
	public static inline function imap_mail_move(imap_stream:Resource, msglist:String, mailbox:String, options=0) : Bool return untyped __call__('imap_mail_move', imap_stream, msglist, mailbox, options);
	public static inline function imap_mail(to:String, subject:String, message:String, ?additional_headers:String, ?cc:String, ?bcc:String, ?rpath:String) : Bool return untyped __call__('imap_mail', to, subject, message, additional_headers, cc, bcc, rpath);
	public static inline function imap_mailboxmsginfo(imap_stream:Resource) : Dynamic return untyped __call__('imap_mailboxmsginfo', imap_stream);
	public static inline function imap_mime_header_decode(text:String) : NativeArray return untyped __call__('imap_mime_header_decode', text);
	public static inline function imap_msgno(imap_stream:Resource, uid:Int) : Int return untyped __call__('imap_msgno', imap_stream, uid);
	public static inline function imap_num_msg(imap_stream:Resource) : Int return untyped __call__('imap_num_msg', imap_stream);
	public static inline function imap_num_recent(imap_stream:Resource) : Int return untyped __call__('imap_num_recent', imap_stream);
	public static inline function imap_open(mailbox:String, username:String, password:String, options=0, n_retries=0, ?params:NativeArray) : Resource return untyped __call__('imap_open', mailbox, username, password, options, n_retries, params);
	public static inline function imap_ping(imap_stream:Resource) : Bool return untyped __call__('imap_ping', imap_stream);
	public static inline function imap_qprint(str:String) : String return untyped __call__('imap_qprint', str);
	public static inline function imap_renamemailbox(imap_stream:Resource, old_mbox:String, new_mbox:String) : Bool return untyped __call__('imap_renamemailbox', imap_stream, old_mbox, new_mbox);
	public static inline function imap_reopen(imap_stream:Resource, mailbox:String, options=0, n_retries=0) : Bool return untyped __call__('imap_reopen', imap_stream, mailbox, options, n_retries);
	public static inline function imap_rfc822_parse_adrlist(address:String, default_host:String) : NativeArray return untyped __call__('imap_rfc822_parse_adrlist', address, default_host);
	public static inline function imap_rfc822_parse_headers(headers:String, defaulthost="UNKNOWN") : Dynamic return untyped __call__('imap_rfc822_parse_headers', headers, defaulthost);
	public static inline function imap_rfc822_write_address(mailbox:String, host:String, personal:String) : String return untyped __call__('imap_rfc822_write_address', mailbox, host, personal);
	public static inline function imap_savebody(imap_stream:Resource, file:Dynamic, msg_number:Int, part_number="", options=0) : Bool return untyped __call__('imap_savebody', imap_stream, file, msg_number, part_number, options);
	public static inline function imap_search(imap_stream:Resource, criteria:String, ?options:Int=SE_FREE, ?charset:String) : NativeArray return untyped __call__('imap_search', imap_stream, criteria, options, charset);
	public static inline function imap_set_quota(imap_stream:Resource, quota_root:String, quota_limit:Int) : Bool return untyped __call__('imap_set_quota', imap_stream, quota_root, quota_limit);
	public static inline function imap_setacl(imap_stream:Resource, mailbox:String, id:String, rights:String) : Bool return untyped __call__('imap_setacl', imap_stream, mailbox, id, rights);
	public static inline function imap_setflag_full(imap_stream:Resource, sequence:String, flag:String, ?options:Int=NIL) : Bool return untyped __call__('imap_setflag_full', imap_stream, sequence, flag, options);
	public static inline function imap_sort(imap_stream:Resource, criteria:Int, reverse:Int, options=0, ?search_criteria:String, ?charset:String) : NativeArray return untyped __call__('imap_sort', imap_stream, criteria, reverse, options, search_criteria, charset);
	public static inline function imap_status(imap_stream:Resource, mailbox:String, options:Int) : Dynamic return untyped __call__('imap_status', imap_stream, mailbox, options);
	public static inline function imap_subscribe(imap_stream:Resource, mailbox:String) : Bool return untyped __call__('imap_subscribe', imap_stream, mailbox);
	public static inline function imap_thread(imap_stream:Resource, ?options:Int=SE_FREE) : NativeArray return untyped __call__('imap_thread', imap_stream, options);
	public static inline function imap_timeout(timeout_type:Int, ?timeout:Int=-1) : Dynamic return untyped __call__('imap_timeout', timeout_type, timeout);
	public static inline function imap_uid(imap_stream:Resource, msg_number:Int) : Int return untyped __call__('imap_uid', imap_stream, msg_number);
	public static inline function imap_undelete(imap_stream:Resource, msg_number:Int, flags=0) : Bool return untyped __call__('imap_undelete', imap_stream, msg_number, flags);
	public static inline function imap_unsubscribe(imap_stream:Resource, mailbox:String) : Bool return untyped __call__('imap_unsubscribe', imap_stream, mailbox);
	public static inline function imap_utf7_decode(text:String) : String return untyped __call__('imap_utf7_decode', text);
	public static inline function imap_utf7_encode(data:String) : String return untyped __call__('imap_utf7_encode', data);
	public static inline function imap_utf8(mime_encoded_text:String) : String return untyped __call__('imap_utf8', mime_encoded_text);
	
	//}
}
