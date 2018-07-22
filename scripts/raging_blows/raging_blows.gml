///@arg id
var _id = argument0;

with _id {
	image_blend = c_red;
	kb_light_ += 10;
	kb_heavy_ += 10;
	is_raging_ = true;
	alarm[5] = 240;
	state_ = player.idle;
}