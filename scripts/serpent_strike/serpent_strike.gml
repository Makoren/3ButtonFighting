///@arg id
var _id = argument0;

with _id {
	image_speed = 10;
	create_hitbox(0, image_xscale, id, "viper_special");
	
	if animation_hit_frame(3) {
		state_ = player.idle;
	}
}