package php.iterators;

@:native("FilterIterator")
extern class FilterIterator extends IteratorIterator implements php.interfaces.OuterIterator
{
	function accept() : Bool;
	function new(iterator:php.interfaces.Iterator) : Void;
	function current() : Dynamic;
	function getInnerIterator() : php.interfaces.Iterator;
	function key() : Dynamic;
	function next() : Void;
	function rewind() : Void;
	function valid() : Bool;
}
