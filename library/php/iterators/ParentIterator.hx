package php.iterators;

@:native("ParentIterator")
extern class ParentIterator extends RecursiveFilterIterator implements RecursiveIterator , OuterIterator
{
	function accept() : Bool;
	function new(iterator:RecursiveIterator) : Void;
	function getChildren() : ParentIterator;
	function hasChildren() : Bool;
	function next() : Void;
	function rewind() : Void;
}
