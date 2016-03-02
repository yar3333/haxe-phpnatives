package php.iterators;

@:native("RecursiveFilterIterator")
extern class abstract RecursiveFilterIterator extends FilterIterator implements OuterIterator , RecursiveIterator
{
	function new(iterator:RecursiveIterator) : Void;
	function getChildren() : RecursiveFilterIterator;
	function hasChildren() : Bool;
    FilterIterator::new(iterator:Iterator)
}
