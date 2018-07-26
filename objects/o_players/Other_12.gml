/// @description Heavy state
image_speed = 10;

// If player is affected by Serpent Strike
if alarm[6] > 0 image_speed -= 5;

if animation_hit_frame(3) {
	create_hitbox(kb_heavy_, image_xscale, id, "heavy");
	if instance_exists(other_player_) other_player_.used_heavy_++;
}

if animation_hit_frame(image_number-1) {
	state_ = player.idle;
}