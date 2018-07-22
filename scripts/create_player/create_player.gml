#region parameters
///@arg x
///@arg player
///@arg is_cpu
///@arg xscale
///@arg character
var _x = argument0;
var _object = argument1;
var _is_cpu = argument2;
var _xscale = argument3;
var _char = argument4;
#endregion

var _player = instance_create_layer(_x, 144, "Instances", _object);
_player.is_cpu_ = _is_cpu;
_player.image_xscale = _xscale;

// Declare variables on the player based on character selected
// TODO Each character has a different special attack, figure out how to implement
switch _char {
	case char.bassik:
		with _player {
			kb_light_ = 30;
			kb_heavy_ = 60;
			kb_counter_ = 60;
			kb_special_ = 180;
			max_charge_ = 20;
			dodge_length_ = 30;
			char_ = char.bassik;
			// sprite_index = char sprite here
			image_blend = c_white;
		}
		break;
	case char.brutus:
		with _player {
			kb_light_ = 30;
			kb_heavy_ = 80;
			kb_counter_ = 50;
			kb_special_ = 0;
			max_charge_ = 20;
			dodge_length_ = 30;
			char_ = char.brutus;
			// sprite_index = char sprite here
			image_blend = c_orange;
		}
		break;
}

return _player;