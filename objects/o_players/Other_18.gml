/// @description Special state
if !hit_by_special_ image_speed = 10;
knockback_ = global.kb_special;

image_speed += 0.25;

if animation_hit_frame(0) {
	// Stun the enemy if this connects
	create_hitbox(0, image_xscale, id, "special");
}

if animation_hit_frame(3) {
	// If special attack connects, perform full special attack
	// If special attack misses, return to idle state
	if !hit_by_special_ {
		image_index = 0;
		state_ = player.idle;
	}
}

if animation_hit_frame(16) {
	if special_loop_counter_ >= 3 {
		// Final attack that knocks back the enemy
		create_hitbox(knockback_, image_xscale, id, "special_final");
		image_speed = 10;
	}
}

if animation_hit_frame(18) {
	// Loop the animation for a set amount of times
	if special_loop_counter_ < 3 {
		image_index = 4;
		special_loop_counter_++;
	}
}

if animation_hit_frame(19) {
	// Revert the player back to idle state
	state_ = player.idle;
	special_loop_counter_ = 0;
	hit_by_special_ = false;
}

if animation_hit_frame(5) || animation_hit_frame(11) || animation_hit_frame(16) {
	// Play this sound every time a slash looks like it connects
	audio_play_sound(a_slash, 7, false);
}
