///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	state_ = player.special;
	image_index = 0;
	energy_ = 0;
	
	// Pauses the game for 1 second
	pause(o_game, 1);
	
	// The rest of this script is run before the objects are deactivated.
}