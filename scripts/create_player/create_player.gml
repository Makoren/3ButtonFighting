#region parameters
///@arg x
///@arg player
///@arg is_cpu
///@arg xscale
var _x = argument0;
var _object = argument1;
var _is_cpu = argument2;
var _xscale = argument3;
#endregion

var _player = instance_create_layer(_x, 144, "Instances", _object);
_player.is_cpu_ = _is_cpu;
_player.image_xscale = _xscale;

return _player;