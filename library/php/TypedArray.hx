package php;

abstract TypedArray<K, V>(NativeArray) from NativeArray to NativeArray
{
	public inline function new()
	{
		this = untyped __call__("array");
	}
	
	public function iterator() : Iterator<V>
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
	
	public function mapKeyValue<T>(callb:K->V->T) : Array<T>
	{
		var r = new Array<T>();
		for (k in Lib.toHaxeArray(untyped __call__("array_keys", this)))
		{
			r.push(callb(k, this[cast k]));
		}
		return r;
	}
	
	public var length(get, never) : Int;
	inline function get_length() : Int return untyped __call__("count", this);
	
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
	public function toArray() : Array<V>
	{
		return cast Lib.toHaxeArray(this);
	}
	
	@:to
	public function toMap() : Map<K, V>
	{
		return cast Lib.hashOfAssociativeArray(this);
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
	
	public function splice(offset:Int, ?length:Int, ?replacement:TypedArray<K, V>) : TypedArray<K, V>
	{
		if (length == null) length = untyped __call__("count", this) - offset;
		if (replacement == null) replacement = untyped __php__("array()");
		return untyped __call__("array_splice", this, offset, length, replacement);
	}
	
	public inline function asort() : Void
	{
		untyped __call__("asort", this);
	}
	
	public inline function hasKey(k:K) : Bool
	{
		return untyped __call__("array_key_exists", k, this);
	}
	
	public inline function hasValue(v:V, strict=false) : Bool
	{
		return untyped __call__("in_array", v, this, strict);
	}
	
	public inline function removeKey(k:K) : Void
	{
		untyped __call__("unset", this[cast k]);
	}
	
	public inline function keys() : Array<K>
	{
		return cast Lib.toHaxeArray(untyped __call__("array_keys", this));
	}
	
	public inline function values() : Array<V>
	{
		return cast Lib.toHaxeArray(untyped __call__("array_values", this));
	}
	
	@:op(A + B)
	inline function plus(arr:TypedArray<K, V>) : TypedArray<K, V>
	{
		return cast((cast this) + (cast arr));
	}
}
