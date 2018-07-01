/// @description Block state
event_inherited();
move_player2();

if !is_cpu_ {
	if global.p2_gamepad {
		if gamepad_button_check_released(0, block_key_) state_ = player.idle;
	} else {
		if keyboard_check_released(block_key_) state_ = player.idle;
	}
} else {
	if !block_key_ state_ = player.idle;
}