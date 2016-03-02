package php.xml;

@:native("DOMException")
extern class DOMException extends Exception
{
	var code(default, null) : Int;
}
