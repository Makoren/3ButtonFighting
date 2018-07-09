///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	state_ = player.hit;
	alarm[0] = global.hit_timer;
	knocked_back_ = true;
	knockback_to_ = x + o_hitbox.knockback_ + (o_game.kb_increase_real_ * -image_xscale);
	audio_play_sound(a_slash, 8, false);
}