///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	state_ = player.light;
	image_index = 0;
	
	if !o_game.simple_ && instance_exists(o_ui) {
		if _id.object_index == o_p1 {
			o_ui.p1_energy_ += min(5, 100-energy_);
		} else if _id.object_index == o_p2 {
			o_ui.p2_energy_ += min(5, 100-energy_);
		}
	}
}