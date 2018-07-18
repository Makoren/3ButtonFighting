///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	charge_level_ = 0;
	state_ = player.heavy;
	image_index = 0;
	if !o_game.simple_ energy_ += min(20, 100-energy_);
}