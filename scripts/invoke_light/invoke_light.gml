///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	charge_level_ = 0;
	state_ = player.light;
	image_index = 0;
}