///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	audio_play_sound(a_clink, 10, false);
	knockback_to_ = x;
	state_ = player.hit;
	alarm[0] = global.hit_timer;
}