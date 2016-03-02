package php.iterators;

@:native("LimitIterator")
extern class LimitIterator extends IteratorIterator implements OuterIterator
{
	function new(iterator:Iterator, ?offset:Int, ?count:Int) : Void;
	function current() : Dynamic;
	function getInnerIterator() : Iterator;
	function getPosition() : Int;
	function key() : Dynamic;
	function next() : Void;
	function rewind() : Void;
	function seek(position:Int) : Int;
	function valid() : Bool;
}
