package php.interfaces;

@:native("OuterIterator")
extern interface OuterIterator extends php.interfaces.Iterator
{
	function getInnerIterator() : php.interfaces.Iterator;
}
