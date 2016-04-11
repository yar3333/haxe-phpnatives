package php.iterators;

@:native("IteratorIterator")
extern class IteratorIterator implements php.interfaces.OuterIterator
{
	function new(iterator:php.interfaces.Traversable) : Void;
	function current() : Dynamic;
	function getInnerIterator() : php.interfaces.Traversable;
	function key() : Dynamic;
	function next() : Void;
	function rewind() : Void;
	function valid() : Bool;
}
