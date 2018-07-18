///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	audio_play_sound(a_counter, 10, false);
	state_ = player.counter;
	image_index = 0;
	if !o_game.simple_ energy_ += min(20, 100-energy_);
}