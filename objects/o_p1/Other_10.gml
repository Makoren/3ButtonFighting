/// @description Idle state
event_inherited();
move_player1();

// The order matters here. If more than one button is held down at the same
// time, the one further down the code overwrites the other one.
if !is_cpu_ {
	if global.p1_gamepad {
		if gamepad_button_check(0, dodge_key_) invoke_dodge(id);
		if gamepad_button_check(0, attack_key_) invoke_charge(id);
		if gamepad_button_check(0, block_key_) invoke_block(id);
	} else {
		if keyboard_check(dodge_key_) invoke_dodge(id);
		if keyboard_check(attack_key_) invoke_charge(id);
		if keyboard_check(block_key_) invoke_block(id);
	}
} else {
	if attack_key_ invoke_charge(id);
	if block_key_ invoke_block(id);
	if dodge_key_ invoke_dodge(id);
}