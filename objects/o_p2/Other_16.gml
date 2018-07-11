/// @description Block state
event_inherited();
move_player2();

if !is_cpu_ {
	if global.p2_gamepad {
		if gamepad_button_check_released(0, block_key_) state_ = player.idle;
		if gamepad_button_check_pressed(0, attack_key_) invoke_charge(id);
		if gamepad_button_check_pressed(0, dodge_key_) invoke_dodge(id);
	} else {
		if keyboard_check_released(block_key_) state_ = player.idle;
		if keyboard_check_pressed(attack_key_) invoke_charge(id);
		if keyboard_check_pressed(dodge_key_) invoke_dodge(id);
	}
} else {
	if !block_key_ state_ = player.idle;
}