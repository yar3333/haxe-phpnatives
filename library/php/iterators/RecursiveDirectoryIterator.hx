package php.iterators;

@:native("RecursiveDirectoryIterator")
extern class RecursiveDirectoryIterator extends FilesystemIterator implements SeekableIterator , RecursiveIterator
{
	function new(path:String, ?flags:Int) : Void;
	function getChildren() : Dynamic;
	function getSubPath() : String;
	function getSubPathname() : String;
	function hasChildren(?allow_links:Bool) : Bool;
	function key() : String;
	function next() : Void;
	function rewind() : Void;
    FilesystemIterator::new(path:String, ?flags:Int)
}
