package php.iterators;

@:native("FilterIterator")
extern class abstract FilterIterator extends IteratorIterator implements OuterIterator
{
	function accept() : Bool;
	function new(iterator:Iterator) : Void;
	function current() : Dynamic;
	function getInnerIterator() : Iterator;
	function key() : Dynamic;
	function next() : Void;
	function rewind() : Void;
	function valid() : Bool;
}
