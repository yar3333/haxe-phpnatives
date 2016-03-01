package php.calendar;

@:native("TokyoTyrantException")
extern class tokyotyrantexception extends Exception
{
	protected      int       $code     ;
      protected      string       $message     ;
      protected      int       $code     ;
      protected      string       $file     ;
      protected      int       $line     ;

	final string Exception::getMessage()
    final Exception Exception::getPrevious()
    final mixed Exception::getCode()
    final string Exception::getFile()
    final int Exception::getLine()
    final array Exception::getTrace()
    final string Exception::getTraceAsString()
    string  Exception::__toString()
    final private void Exception::__clone()
}
