package php;

class FilesystemNatives
{
	public static inline function basename(path:String, ?suffix:String) : String return untyped __call__('basename', path, suffix);
	
	public static inline function chgrp(filename:String, group:Dynamic) : Bool return untyped __call__('chgrp', filename, group);
	
	public static inline function chmod(filename:String, mode:Int) : Bool return untyped __call__('chmod', filename, mode);
	
	public static inline function chown(filename:String, user:Dynamic) : Bool return untyped __call__('chown', filename, user);
	
	public static inline function clearstatcache(clear_realpath_cache=false, ?filename:String) : Void return untyped __call__('clearstatcache', clear_realpath_cache, filename);
	
	public static inline function copy(source:String, dest:String, ?context:Resource) : Bool return untyped __call__('copy', source, dest, context);
	
	public static inline function dirname(path:String, levels=1) : String return untyped __call__('dirname', path, levels);
	
	public static inline function disk_free_space(directory:String) : Float return untyped __call__('disk_free_space', directory);
	
	public static inline function disk_total_space(directory:String) : Float return untyped __call__('disk_total_space', directory);
	
	public static inline function fclose(handle:Resource) : Bool return untyped __call__('fclose', handle);
	
	public static inline function feof(handle:Resource) : Bool return untyped __call__('feof', handle);
	
	public static inline function fflush(handle:Resource) : Bool return untyped __call__('fflush', handle);
	
	public static inline function fgetc(handle:Resource) : String return untyped __call__('fgetc', handle);
	
	public static inline function fgetcsv(handle:Resource, length=0, delimiter=",", enclosure='"', escape="\\") : NativeArray return untyped __call__('fgetcsv', handle, length, delimiter, enclosure, escape);
	
	public static inline function fgets(handle:Resource, ?length:Int) : String return untyped __call__('fgets', handle, length);
	
	public static inline function fgetss(handle:Resource, ?length:Int, ?allowable_tags:String) : String return untyped __call__('fgetss', handle, length, allowable_tags);
	
	public static inline function file_exists(filename:String) : Bool return untyped __call__('file_exists', filename);
	
	public static inline function file_get_contents(filename:String, use_include_path=false, ?context:Resource, offset=0, ?maxlen:Int) : String return untyped __call__('file_get_contents', filename, use_include_path, context, offset, maxlen);
	
	public static inline function file_put_contents(filename:String, data:Dynamic, flags=0, ?context:Resource) : Int return untyped __call__('file_put_contents', filename, data, flags, context);
	
	public static inline function file(filename:String, flags=0, ?context:Resource) : NativeArray return untyped __call__('file', filename, flags, context);
	
	public static inline function fileatime(filename:String) : Int return untyped __call__('fileatime', filename);
	
	public static inline function filectime(filename:String) : Int return untyped __call__('filectime', filename);
	
	public static inline function filegroup(filename:String) : Int return untyped __call__('filegroup', filename);
	
	public static inline function fileinode(filename:String) : Int return untyped __call__('fileinode', filename);
	
	public static inline function filemtime(filename:String) : Int return untyped __call__('filemtime', filename);
	
	public static inline function fileowner(filename:String) : Int return untyped __call__('fileowner', filename);
	
	public static inline function fileperms(filename:String) : Int return untyped __call__('fileperms', filename);
	
	public static inline function filesize(filename:String) : Int return untyped __call__('filesize', filename);
	
	public static inline function filetype(filename:String) : String return untyped __call__('filetype', filename);
	
	public static inline function flock(handle:Resource, operation:Int, ?wouldblock:Int) : Bool return untyped __call__('flock', handle, operation, wouldblock);
	
	public static inline function fnmatch(pattern:String, str:String, flags=0) : Bool return untyped __call__('fnmatch', pattern, str, flags);
	
	public static inline function fopen(filename:String, mode:String, use_include_path=false, ?context:Resource) : Resource return untyped __call__('fopen', filename, mode, use_include_path, context);
	
	public static inline function fpassthru(handle:Resource) : Int return untyped __call__('fpassthru', handle);
	
	public static inline function fputcsv(handle:Resource, fields:NativeArray, delimiter=", ", enclosure='"', escape_char="\\") : Int return untyped __call__('fputcsv', handle, fields, delimiter, enclosure, escape_char);
	
	public static inline function fread(handle:Resource, length:Int) : String return untyped __call__('fread', handle, length);
	
	public static inline function fscanf(handle:Resource, format:String, ?restArgs:Dynamic) : Dynamic return untyped __call__('fscanf', handle, format, restArgs);
	
	public static inline function fseek(handle:Resource, offset:Int) : Int return untyped __call__('fseek', handle, offset);
	
	public static inline function fseek_ex(handle:Resource, offset:Int, whence:Int) : Int return untyped __call__('fseek', handle, offset, whence);
	
	public static inline function fstat(handle:Resource) : NativeArray return untyped __call__('fstat', handle);
	
	public static inline function ftell(handle:Resource) : Int return untyped __call__('ftell', handle);
	
	public static inline function ftruncate(handle:Resource, size:Int) : Bool return untyped __call__('ftruncate', handle, size);
	
	public static inline function fwrite(handle:Resource, str:String, ?length:Int) : Int return untyped __call__('fwrite', handle, str, length);
	
	public static inline function glob(pattern:String, flags=0) : NativeArray return untyped __call__('glob', pattern, flags);
	
	public static inline function is_dir(filename:String) : Bool return untyped __call__('is_dir', filename);
	
	public static inline function is_executable(filename:String) : Bool return untyped __call__('is_executable', filename);
	
	public static inline function is_file(filename:String) : Bool return untyped __call__('is_file', filename);
	
	public static inline function is_link(filename:String) : Bool return untyped __call__('is_link', filename);
	
	public static inline function is_readable(filename:String) : Bool return untyped __call__('is_readable', filename);
	
	public static inline function is_uploaded_file(filename:String) : Bool return untyped __call__('is_uploaded_file', filename);
	
	public static inline function is_writable(filename:String) : Bool return untyped __call__('is_writable', filename);
	
	public static inline function lchgrp(filename:String, group:Dynamic) : Bool return untyped __call__('lchgrp', filename, group);
	
	public static inline function lchown(filename:String, user:Dynamic) : Bool return untyped __call__('lchown', filename, user);
	
	public static inline function link(target:String, link:String) : Bool return untyped __call__('link', target, link);
	
	public static inline function linkinfo(path:String) : Int return untyped __call__('linkinfo', path);
	
	public static inline function lstat(filename:String) : NativeArray return untyped __call__('lstat', filename);
	
	public static inline function mkdir(pathname:String, mode=0x1FF, recursive=false) : Bool return untyped __call__('mkdir', pathname, mode, recursive);
	
	public static inline function mkdir_ex(pathname:String, mode=0x1FF, recursive=false, context:Resource) : Bool return untyped __call__('mkdir', pathname, mode, recursive, context);
	
	public static inline function move_uploaded_file(filename:String, destination:String) : Bool return untyped __call__('move_uploaded_file', filename, destination);
	
	public static inline function parse_ini_file(filename:String, process_sections=false) : NativeArray return untyped __call__('parse_ini_file', filename, process_sections);
	
	public static inline function parse_ini_file_ex(filename:String, process_sections=false, scanner_mode:Int) : NativeArray return untyped __call__('parse_ini_file', filename, process_sections, scanner_mode);
	
	public static inline function parse_ini_string(ini:String, process_sections=false) : NativeArray return untyped __call__('parse_ini_string', ini, process_sections);
	
	public static inline function parse_ini_string_ex(ini:String, process_sections=false, scanner_mode:Int) : NativeArray return untyped __call__('parse_ini_string', ini, process_sections, scanner_mode);
	
	public static inline function pathinfo(path:String) : Dynamic return untyped __call__('pathinfo', path);
	
	public static inline function pathinfo_ex(path:String, options:Int) : Dynamic return untyped __call__('pathinfo', path, options);
	
	public static inline function pclose(handle:Resource) : Int return untyped __call__('pclose', handle);
	
	public static inline function popen(command:String, mode:String) : Resource return untyped __call__('popen', command, mode);
	
	public static inline function readfile(filename:String, use_include_path=false, ?context:Resource) : Int return untyped __call__('readfile', filename, use_include_path, context);
	
	public static inline function readlink(path:String) : String return untyped __call__('readlink', path);
	
	public static inline function realpath_cache_get() : NativeArray return untyped __call__('realpath_cache_get');
	
	public static inline function realpath_cache_size() : Int return untyped __call__('realpath_cache_size');
	
	public static inline function realpath(path:String) : String return untyped __call__('realpath', path);
	
	public static inline function rename(oldname:String, newname:String, ?context:Resource) : Bool return untyped __call__('rename', oldname, newname, context);
	
	public static inline function rewind(handle:Resource) : Bool return untyped __call__('rewind', handle);
	
	public static inline function rmdir(dirname:String, ?context:Resource) : Bool return untyped __call__('rmdir', dirname, context);
	
	public static inline function stat(filename:String) : NativeArray return untyped __call__('stat', filename);
	
	public static inline function symlink(target:String, link:String) : Bool return untyped __call__('symlink', target, link);
	
	public static inline function tempnam(dir:String, prefix:String) : String return untyped __call__('tempnam', dir, prefix);
	
	public static inline function tmpfile() : Resource return untyped __call__('tmpfile');
	
	public static inline function touch(filename:String) : Bool return untyped __call__('touch', filename);
	
	public static inline function touch_ex(filename:String, time:Int, ?atime:Int) : Bool return untyped __call__('touch', filename, time, atime);
	
	public static inline function umask(?mask:Int) : Int return untyped __call__('umask', mask);
	
	public static inline function unlink(filename:String, ?context:Resource) : Bool return untyped __call__('unlink', filename, context);
}
