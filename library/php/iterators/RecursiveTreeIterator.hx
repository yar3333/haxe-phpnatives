package php.iterators;

@:native("RecursiveTreeIterator")
extern class RecursiveTreeIterator extends RecursiveIteratorIterator implements OuterIterator
{
	static var BYPASS_CURRENT(default, null) : Int;
	static var BYPASS_KEY(default, null) : Int;
	static var PREFIX_LEFT(default, null) : Int;
	static var PREFIX_MID_HAS_NEXT(default, null) : Int;
	static var PREFIX_MID_LAST(default, null) : Int;
	static var PREFIX_END_HAS_NEXT(default, null) : Int;
	static var PREFIX_END_LAST(default, null) : Int;
	static var PREFIX_RIGHT(default, null) : Int;

	function beginChildren() : Void;
	function beginIteration() : RecursiveIterator;
	function callGetChildren() : RecursiveIterator;
	function callHasChildren() : Bool;
	function new(RecursiveIterator|it:IteratorAggregate, ?flags:Int, ?cit_flags:Int, ?mode:Int) : Void;
	function current() : String;
	function endChildren() : Void;
	function endIteration() : Void;
	function getEntry() : String;
	function getPostfix() : Void;
	function getPrefix() : String;
	function key() : String;
	function next() : Void;
	function nextElement() : Void;
	function rewind() : Void;
	function setPrefixPart(part:Int, value:String) : Void;
	function valid() : Bool;
    RecursiveIteratorIterator::new(iterator:Traversable, ?mode:Int, ?flags:Int)
}
