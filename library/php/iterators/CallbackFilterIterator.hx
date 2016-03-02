package php.iterators;

@:native("CallbackFilterIterator")
extern class CallbackFilterIterator extends FilterIterator implements OuterIterator
{
	function new(iterator:Iterator, callback:callable) : Void;
	function accept() : String;
    FilterIterator::new(iterator:Iterator)
}
