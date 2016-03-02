package php.iterators;

@:native("NoRewindIterator")
extern class NoRewindIterator extends IteratorIterator
{
	function new(iterator:Iterator) : Void;
	function current() : Dynamic;
	function getInnerIterator() : iterator;
	function key() : Dynamic;
	function next() : Void;
	function rewind() : Void;
	function valid() : Bool;
    IteratorIterator::new(iterator:Traversable)
}
