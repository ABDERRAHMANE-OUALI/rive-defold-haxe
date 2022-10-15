package riveHaxe;

import defold.types.Url;
import defold.Go.GoPlayback;
import lua.Table;

@:native("rive")
extern class Rive {
	static function play_anim(id:String, animationName:String, animationMode:GoPlayback, options:Map<String, Float>,
		callback:(self:Self, messageID:String, message:Table<String, Dynamic>, sender:Dynamic) -> Void):Void;

	static function play_state_machine(url:defold.types.Url, state_machine_id:String, options:Table<String, Dynamic>):Void;

	static function cancel(url:String):Void;
	static function get_go(url:String, bone_id:String):Void;
}

extern class Self {
	function run():Void;
}
