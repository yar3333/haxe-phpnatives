package php.iterators;

@:native("EmptyIterator")
extern class EmptyIterator implements Iterator
{
	function current() : Dynamic;
	function key() : scalar;
	function next() : Void;
	function rewind() : Void;
	function valid() : Bool;
}
