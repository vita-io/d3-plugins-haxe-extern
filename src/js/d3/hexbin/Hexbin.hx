package js.d3.hexbin;
 import js.d3.D3;
 import haxe.extern.Rest;


/* https://github.com/d3/d3-plugins/tree/master/hexbin */

@:native("d3")
extern class D3Hexbin extends D3
{
    @:overload(function() : Array<Array<Float>>->Array<Dynamic> {})
    public static function hexbin () : Hexbin;
}


/*class AddHexbin {
    static public inline function hexbin (d3:Class<D3>) {
        return cast(d3, Class<D3Hexbin>).hexbin();
    }
}*/


private typedef Accessor = Dynamic->Float;
private typedef Center = Array<Float>; // {> Array<Float>, i:Int, j:Int};

@:native("d3.hexbin")
extern class Hexbin {
    @:overload(function():Array<Float> {})
    public function size (width:Float, height:Float):Hexbin;

    @:overload(function():Float {})
    public function radius (radius:Float):Hexbin;

    @:overload(function():Accessor {})
    public function x (x:Accessor):Hexbin;

    @:overload(function():Accessor {})
    public function y (y:Accessor):Hexbin;

    public function hexagon (radius:Float) : String;
    public function centers () : Array<Center>;
    public function mesh () : String;
}
