/// @description Idle state
event_inherited();
move_player1();

if global.p1_gamepad == true {
	if gamepad_button_check(0, attack_key_) state_ = player.charge;
	if gamepad_button_check(0, block_key_) state_ = player.block;
} else {
	if keyboard_check(attack_key_) state_ = player.charge;
	if keyboard_check(block_key_) state_ = player.block;
}

// TODO change this state into something that supports the gamepad functions
// as well as the keyboard functions.