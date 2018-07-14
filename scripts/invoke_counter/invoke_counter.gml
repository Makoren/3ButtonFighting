///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	audio_play_sound(a_counter, 10, false);
	state_ = player.counter;
	image_index = 0;
	energy_ += 20;
}