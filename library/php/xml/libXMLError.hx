package php.xml;

@:native("libXMLError")
extern class libXMLError
{
	var level : Int;
	var code : Int;
	var column : Int;
	var message : String;
	var file : String;
	var line : Int;
}
