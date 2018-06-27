/// @description Idle state
image_speed = 0.3;

// Charge an attack
if keyboard_check(attack_key_) state_ = player.charge;

// Block
if keyboard_check(block_key_) state_ = player.block;