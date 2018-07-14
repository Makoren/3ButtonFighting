///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	charge_level_ = 0;
	state_ = player.heavy;
	image_index = 0;
	energy_ += 20;
}