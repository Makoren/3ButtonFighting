/// @description Counter state
image_speed = 0.75;
knockback_ = global.kb_heavy;

if animation_hit_frame(1) {
	create_hitbox(knockback_, image_xscale, id);
}

if animation_hit_frame(image_number-1) {
	state_ = player.idle;
}