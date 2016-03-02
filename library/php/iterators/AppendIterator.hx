package php.iterators;

@:native("AppendIterator")
extern class AppendIterator extends IteratorIterator implements OuterIterator
{
	function new() : Void;
	function append(iterator:Iterator) : Void;
	function current() : Dynamic;
	function getArrayIterator() : Void;
	function getInnerIterator() : Iterator;
	function getIteratorIndex() : Int;
	function key() : scalar;
	function next() : Void;
	function rewind() : Void;
	function valid() : Bool;
    IteratorIterator::new(iterator:Traversable)
}
