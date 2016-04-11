package php.iterators;

@:native("AppendIterator")
extern class AppendIterator extends IteratorIterator implements php.interfaces.OuterIterator
{
	function new(?iterator:php.interfaces.Traversable) : Void;
	function append(iterator:php.interfaces.Iterator) : Void;
	function current() : Dynamic;
	function getArrayIterator() : Void;
	function getInnerIterator() : php.interfaces.Iterator;
	function getIteratorIndex() : Int;
	function key() : Dynamic;
	function next() : Void;
	function rewind() : Void;
	function valid() : Bool;
}
