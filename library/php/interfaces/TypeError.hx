package php.interfaces;

@:native("TypeError")
extern class TypeError extends Error
{
	abstract string Throwable::getMessage()
    abstract int Throwable::getCode()
    abstract string Throwable::getFile()
    abstract int Throwable::getLine()
    abstract array Throwable::getTrace()
    abstract string Throwable::getTraceAsString()
    abstract Throwable Throwable::getPrevious()
    abstract string Throwable::__toString()
}
