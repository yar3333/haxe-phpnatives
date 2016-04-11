package php.exceptions;

import php.interfaces.Throwable;

@:native("Exception")
extern class Exception
{
	private var message : String;
	private var code : Int;
	private var file : String;
	private var line : Int;

	function new(?message:String, ?code:Int, ?previous:Throwable) : Void;
	function getMessage() : String;
	function getPrevious() : Exception;
	function getCode() : Dynamic;
	function getFile() : String;
	function getLine() : Int;
	function getTrace() : NativeArray;
	function getTraceAsString() : String;
	function __toString() : String;
	private function __clone() : Void;
}
