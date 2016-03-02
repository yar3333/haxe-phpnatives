package php.xml;

@:native("SimpleXMLIterator")
extern class SimpleXMLIterator extends SimpleXMLElement implements RecursiveIterator , Countable
{
	SimpleXMLElement::new(data:String, ?options:Int, ?data_is_url:Bool, ?ns:String, ?is_prefix:Bool)
	function current() : Dynamic;
	function getChildren() : SimpleXMLIterator;
	function hasChildren() : Bool;
	function key() : Dynamic;
	function next() : Void;
	function rewind() : Void;
	function valid() : Bool;
}
