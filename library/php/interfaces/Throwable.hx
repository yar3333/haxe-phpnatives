package php.interfaces;

@:native("Throwable")
extern class Throwable
{
	abstract string getMessage()
    abstract int getCode()
    abstract string getFile()
    abstract int getLine()
    abstract array getTrace()
    abstract string getTraceAsString()
    abstract Throwable getPrevious()
    abstract string __toString()
}
