# phpnatives #

**phpnatives** is a Haxe wrapper for standard PHP functions/classes/interfaces.

The source repo also contain several tools to automatic downloading
and convertion from http://php.net/ docs into Haxe classes.

## Installation ##

```bash
haxelib install phpnatives
```


## Using TypedArray class ##

To have typed array, use `php.TypedArray<K,V>` instead of `php.NativeArray`.
`TypedArray` is just abstract for `NativeArray`. Examples:

```haxe
// create new empty php array
var arr = new TypedArray<String, Int>();

// create new TypedArray<Int, String> from Haxe array
var arr = TypedArray.fromArray([ "abc", "def", "xyz" ]);

// create new TypedArray<Int, String> from Haxe map
// note: items order may not be keeped due to Haxe map source!
var arr = TypedArray.fromMap([ 5=>"abc", 10=>"def", 15=>"xyz" ]);

var strArr = new TypedArray<String, String>(); // keys of String
strArr["key"] = "value";

// PHP's foreach analog
arr.foreachKeyValue(function(key, value)
{
	trace(key + " = " + value);
});

// iterate values
for (value in arr) trace(value);

// iterate keys
for (key in arr.keys()) trace(key);

```


## Using PHP functions ##

Just use `php.***Natives` classes:

```haxe
import php.ArrayNatives.ksort;
import php.TypedArray;
import php.VarNatives.empty;

// ...

var arr = new TypedArray<String, Int>();
ksort(arr);

if (empty(arr)) trace("Array is empty.");
```


## Using PHP Classes ##

Look into `php.***` packages:

```haxe
import php.calendar.DateTime;

// ...

var date = new DateTime();
trace(date.format('d.m.Y H:i:s'));
```


## Using Global Variables ##

Use `php.GlobalVars` class:

```haxe
trace(GlobalVars._FILES);
```
