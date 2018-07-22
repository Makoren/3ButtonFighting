///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	state_ = player.hit;
	alarm[0] = global.hit_timer;
	alarm[3] = -1; // This is to prevent the state from going back to idle after being hit during the ending lag of a dodge.
	alarm[4] = -1; // Prevents player from jumping back to idle after being hit at the end of hit state.
	knocked_back_ = true;
	knockback_to_ = x + o_hitbox.knockback_ + (o_game.kb_increase_real_ * -image_xscale);
	audio_play_sound(a_slash, 8, false);
}