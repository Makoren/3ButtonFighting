/// @description Block state
image_speed = 0;
if keyboard_check_released(block_key_) {
	state_ = player.idle; // This doesnt trigger in debugging
}