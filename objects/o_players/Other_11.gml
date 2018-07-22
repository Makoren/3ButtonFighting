/// @description Light state
image_speed = 10;

if animation_hit_frame(1) {
	create_hitbox(kb_light_, image_xscale, id, "light");
	if instance_exists(other_player_) other_player_.used_light_++;
}

if animation_hit_frame(image_number-1) {
	state_ = player.idle;
}