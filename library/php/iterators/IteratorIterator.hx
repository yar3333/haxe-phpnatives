package php.iterators;

@:native("IteratorIterator")
extern class IteratorIterator implements OuterIterator
{
	function new(iterator:Traversable) : Void;
	function current() : Dynamic;
	function getInnerIterator() : Traversable;
	function key() : scalar;
	function next() : Void;
	function rewind() : Void;
	function valid() : Bool;
}
