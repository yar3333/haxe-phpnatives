package php;

class CoreNatives
{
	public static inline function throw_(v:Dynamic) : Void
	{
		untyped __call__("throw", v);
	}
}