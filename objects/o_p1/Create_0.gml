event_inherited();

// P1 input
attack_key_ = global.p1_attack_key;
block_key_ = global.p1_block_key;

// If simple mode is off, enable these keys
if !o_game.simple_ {
	dodge_key_ = global.p1_dodge_key;
	special_key_ = global.p1_special_key;
	light_key_ = global.p1_light_key;
}