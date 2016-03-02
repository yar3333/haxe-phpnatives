package php.interfaces;

@:native("SeekableIterator")
extern interface SeekableIterator extends Iterator
{
	function seek(position:Int) : Void;
}
