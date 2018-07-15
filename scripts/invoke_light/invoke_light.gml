///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	charge_level_ = 0;
	state_ = player.light;
	image_index = 0;
	energy_ += min(10, 100-energy_); // If the energy gain will go over 100, set it to 100 instead
}