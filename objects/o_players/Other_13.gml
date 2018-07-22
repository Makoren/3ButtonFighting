/// @description Counter state
image_speed = 10;

if animation_hit_frame(1) {
	create_hitbox(kb_counter_, image_xscale, id, "counter");
	if instance_exists(other_player_) other_player_.used_counter_++;
}

if animation_hit_frame(image_number-1) {
	state_ = player.idle;
}