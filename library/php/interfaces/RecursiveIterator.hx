package php.interfaces;

@:native("RecursiveIterator")
extern interface RecursiveIterator extends Iterator
{
	function getChildren() : RecursiveIterator;
	function hasChildren() : Bool;
}
