package php.iterators;

@:native("DirectoryIterator")
extern class DirectoryIterator extends SplFileInfo implements SeekableIterator
{
	function new(path:String) : Void;
	function current() : DirectoryIterator;
	function getATime() : Int;
	function getBasename(?suffix:String) : String;
	function getCTime() : Int;
	function getExtension() : String;
	function getFilename() : String;
	function getGroup() : Int;
	function getInode() : Int;
	function getMTime() : Int;
	function getOwner() : Int;
	function getPath() : String;
	function getPathname() : String;
	function getPerms() : Int;
	function getSize() : Int;
	function getType() : String;
	function isDir() : Bool;
	function isDot() : Bool;
	function isExecutable() : Bool;
	function isFile() : Bool;
	function isLink() : Bool;
	function isReadable() : Bool;
	function isWritable() : Bool;
	function key() : String;
	function next() : Void;
	function rewind() : Void;
	function seek(position:Int) : Void;
	function __toString() : String;
	function valid() : Bool;
}
