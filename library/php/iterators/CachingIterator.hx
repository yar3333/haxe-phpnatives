package php.iterators;

@:native("CachingIterator")
extern class CachingIterator extends IteratorIterator implements OuterIterator , ArrayAccess , Countable
{
	static var CALL_TOSTRING(default, null) : Int;
	static var CATCH_GET_CHILD(default, null) : Int;
	static var TOSTRING_USE_KEY(default, null) : Int;
	static var TOSTRING_USE_CURRENT(default, null) : Int;
	static var TOSTRING_USE_INNER(default, null) : Int;
	static var FULL_CACHE(default, null) : Int;

	function new(iterator:Iterator, ?flags:Int) : Void;
	function count() : Int;
	function current() : Void;
	function getCache() : NativeArray;
	function getFlags() : Int;
	function getInnerIterator() : Iterator;
	function hasNext() : Void;
	function key() : scalar;
	function next() : Void;
	function offsetExists(index:String) : Void;
	function offsetGet(index:String) : Void;
	function offsetSet(index:String, newval:String) : Void;
	function offsetUnset(index:String) : Void;
	function rewind() : Void;
	function setFlags(flags:Int) : Void;
	function __toString() : Void;
	function valid() : Void;
}
