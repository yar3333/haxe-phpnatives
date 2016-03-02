package php.iterators;

@:native("RecursiveCachingIterator")
extern class RecursiveCachingIterator extends CachingIterator implements Countable , ArrayAccess , OuterIterator , RecursiveIterator
{
	function new(iterator:Iterator, ?flags:String) : Void;
	function getChildren() : RecursiveCachingIterator;
	function hasChildren() : Bool;
    CachingIterator::new(iterator:Iterator, ?flags:Int)
}
