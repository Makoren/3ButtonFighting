/// @description Charge state
image_speed = 0;
var _max_charge = global.max_charge;
charge_level_++;

// Light attack
if keyboard_check_released(attack_key_) {
	if charge_level_ < _max_charge && charge_level_ != 0 {
		invoke_light(id);
	}
}

// Heavy attack
if charge_level_ >= _max_charge {
	invoke_heavy(id);
}