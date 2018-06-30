/// @description Block state
event_inherited();
move_player1();

if !is_cpu_ {
	if global.p1_gamepad {
		if gamepad_button_check_released(0, block_key_) state_ = player.idle;
	} else {
		if keyboard_check_released(block_key_) state_ = player.idle;
	}
}