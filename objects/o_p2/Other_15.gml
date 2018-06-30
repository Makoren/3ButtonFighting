/// @description Charge state
event_inherited();
move_player2();

var _max_charge = global.max_charge;
charge_level_++;

if !is_cpu_ {
	if global.p2_gamepad {
		// Light attack
		if gamepad_button_check_released(0, attack_key_) {
			if charge_level_ < _max_charge && charge_level_ != 0 {
				invoke_light(id);
			}
		}
	} else {
		// Light attack
		if keyboard_check_released(attack_key_) {
			if charge_level_ < _max_charge && charge_level_ != 0 {
				invoke_light(id);
			}
		}
	}
}

// Heavy attack
if charge_level_ >= _max_charge {
	invoke_heavy(id);
}