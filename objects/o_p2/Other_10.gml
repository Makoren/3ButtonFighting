/// @description Idle state
event_inherited();
move_player2();

if global.p2_gamepad {
	if gamepad_button_check(0, attack_key_) state_ = player.charge;
	if gamepad_button_check(0, block_key_) state_ = player.block;
} else {
	if keyboard_check(attack_key_) state_ = player.charge;
	if keyboard_check(block_key_) state_ = player.block;
}

// TODO Figure out why keyboard_check is still being used while global.p2_gamepad is true