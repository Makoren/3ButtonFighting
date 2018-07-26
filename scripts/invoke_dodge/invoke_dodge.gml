///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	state_ = player.dodge;
	dodged_ = true;
	knockback_to_ = x + dodge_length_ * -image_xscale;
	image_alpha = 0.5;
	alarm[2] = global.one_second/2; // Dodge invincibility
	audio_play_sound(a_counter, 8, false);
}