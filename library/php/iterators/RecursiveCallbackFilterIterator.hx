package php.iterators;

@:native("RecursiveCallbackFilterIterator")
extern class RecursiveCallbackFilterIterator extends CallbackFilterIterator implements OuterIterator , RecursiveIterator
{
	function new(iterator:RecursiveIterator, callback:String) : Void;
	function getChildren() : RecursiveCallbackFilterIterator;
	function hasChildren() : Bool;
}
