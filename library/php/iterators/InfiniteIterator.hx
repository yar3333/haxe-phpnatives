package php.iterators;

@:native("InfiniteIterator")
extern class InfiniteIterator extends IteratorIterator implements OuterIterator
{
	function new(iterator:Iterator) : Void;
	function next() : Void;
    IteratorIterator::new(iterator:Traversable)
}
