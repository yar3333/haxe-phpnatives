package php.iterators;

@:native("RecursiveArrayIterator")
extern class RecursiveArrayIterator extends ArrayIterator implements RecursiveIterator
{
	function getChildren() : RecursiveArrayIterator;
	function hasChildren() : Bool;
    ArrayIterator::new(arr:Dynamic, ?flags:Int)
}
