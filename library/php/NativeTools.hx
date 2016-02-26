package php;

class NativeTools
{
	public static inline function physEqu(a:Dynamic, b:Dynamic) : Bool return untyped __physeq__(a, b);
}