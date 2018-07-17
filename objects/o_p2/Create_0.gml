event_inherited();

// P2 input
attack_key_ = global.p2_attack_key;
block_key_ = global.p2_block_key;

// If simple mode is off, enable these keys
if !o_game.simple_ {
	dodge_key_ = global.p2_dodge_key;
	special_key_ = global.p2_special_key;
	light_key_ = global.p2_light_key;
}