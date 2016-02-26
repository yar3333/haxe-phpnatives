package php;

abstract TypedArray<K,V>(NativeArray) from NativeArray to NativeArray
{
	public inline function new() this = untyped __call__("array");
	
	@:arrayAccess
	inline function get(k:K) : V return this[cast k];
	
	@:arrayAccess
	inline function set(k:K, v:V) : V return this[cast k] = v;
	
	public function iterator()
	{
		var a = Lib.toHaxeArray(untyped __call__("array_values", this));
		return a.iterator();
	}
	
	public function foreachKeyValue(callb:K->V->Void)
	{
		for (k in Lib.toHaxeArray(untyped __call__("array_keys", this)))
		{
			callb(k, this[cast k]);
		}
	}
	
	public inline function join(glue:String) : String return untyped __call__("implode", glue, this);
	
	@:from
	public static inline function fromHaxeArray<V>(arr:Array<V>) : TypedArray<Int,V> return Lib.toPhpArray(arr);
}
