/// @description Counter state
image_speed = 8;
knockback_ = global.kb_heavy;

if animation_hit_frame(1) {
	create_hitbox(knockback_, image_xscale, id, "counter");
	if instance_exists(other_player_) other_player_.used_counter_++;
}

if animation_hit_frame(image_number-1) {
	state_ = player.idle;
}