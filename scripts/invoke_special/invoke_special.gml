///@arg id
var _id = argument0;

if !instance_exists(_id) exit;

with _id {
	state_ = player.special;
	image_index = 0;
	if instance_exists(o_ui) {
		if _id.object_index == o_p1 {
			o_ui.p1_energy_ = 0;
		}
		else if _id.object_index == o_p2 {
			o_ui.p2_energy_ = 0;
		}
	}
	
	pause(o_game, 1);
	
	// The rest of this script is run before the objects are deactivated.
}