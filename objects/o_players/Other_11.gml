/// @description Light state
image_speed = 0.75;
knockback_ = global.kb_light;

if animation_hit_frame(1) {
	create_hitbox(knockback_, image_xscale, id);
	if instance_exists(other_player_) other_player_.used_light_++;
}

if animation_hit_frame(image_number-1) {
	state_ = player.idle;
}