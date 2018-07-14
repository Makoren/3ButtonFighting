///@arg id
///@arg seconds
var _id = argument0;
var _duration = argument1;

if !instance_exists(_id) exit;

with _id {
	state_ = player.stun;
	image_index = 0;
	
	// The stun duration is measured in seconds, so it needs to be converted into frames.
	alarm[4] = abs(_duration) * 60;
}