package php.interfaces;

@:native("OuterIterator")
extern interface OuterIterator extends Iterator
{
	function getInnerIterator() : Iterator;
}
