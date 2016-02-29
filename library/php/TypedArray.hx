package php;

abstract TypedArray<K, V>(NativeArray) from NativeArray to NativeArray
{
	public inline function new()
	{
		this = untyped __call__("array");
	}
	
	public function iterator()
	{
		var a = Lib.toHaxeArray(untyped __call__("array_values", this));
		return a.iterator();
	}
	
	public function foreachKeyValue(callb:K->V->Void) : Void
	{
		for (k in Lib.toHaxeArray(untyped __call__("array_keys", this)))
		{
			callb(k, this[cast k]);
		}
	}
	
	@:from
	public static function fromMap<K, V>(m:Map<K, V>) : TypedArray<K, V>
	{
		return Lib.associativeArrayOfHash(cast m);
	}
	
	@:from
	public static function fromArray<V>(a:Array<V>) : TypedArray<Int, V>
	{
		return Lib.toPhpArray(a);
	}
	
	@:to
	public function toArray<V>() : Array<V>
	{
		return Lib.toHaxeArray(this);
	}
	
	@:to
	public function toMap<K, V>() : Map<K, V>
	{
		return Lib.hashOfAssociativeArray(this);
	}

	@:arrayAccess
	public inline function get(k:K) : V
	{
		return this[cast k];
	}
	
	@:arrayAccess
	public inline function set(k:K, v:V) : V
	{
		return this[cast k] = v;
	}
	
	public inline function push(v:V) : Int
	{
		return untyped __call__("array_push", v);
	}
	
	public inline function pop() : V
	{
		return untyped __call__("array_pop");
	}
	
	public inline function unshift(v:V) : Int
	{
		return untyped __call__("array_unshift", v);
	}
	
	public inline function shift() : V
	{
		return untyped __call__("array_shift");
	}
	
	public inline function join(glue="") : String
	{
		return untyped __call__("implode", glue, this);
	}
	
	public inline function asort() : Void
	{
		untyped __call__("asort", this);
	}
}
