package php.iterators;

@:native("GlobIterator")
extern class GlobIterator extends FilesystemIterator implements SeekableIterator , Countable
{
	function new(path:String, ?flags:Int) : Void;
	function count() : Int;
    FilesystemIterator::new(path:String, ?flags:Int)
}
