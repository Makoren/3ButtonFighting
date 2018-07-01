/// @description Idle state
event_inherited();
move_player2();

if !is_cpu_ {
	if global.p2_gamepad {
		if gamepad_button_check(0, attack_key_) invoke_charge(id);
		if gamepad_button_check(0, block_key_) invoke_block(id);
	} else {
		if keyboard_check(attack_key_) invoke_charge(id);
		if keyboard_check(block_key_) invoke_block(id);
	}
} else {
	if attack_key_ invoke_charge(id);
	if block_key_ invoke_block(id);
}