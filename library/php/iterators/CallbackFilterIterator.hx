package php.iterators;

import haxe.Constraints.Function;

@:native("CallbackFilterIterator")
extern class CallbackFilterIterator extends FilterIterator implements php.interfaces.OuterIterator
{
	function new(iterator:php.interfaces.Iterator, ?callback:Function) : Void;
	function accept() : String;
}
