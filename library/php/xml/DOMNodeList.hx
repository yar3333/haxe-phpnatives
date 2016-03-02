package php.xml;

@:native("DOMNodeList")
extern class DOMNodeList implements Traversable
{
	var length(default, null) : Int;

	function item(index:Int) : DOMNode;
}
