// Reset fight variables
timer_ = 0;

hurry_up_ = false;
alarm[1] = global.one_second * hurry_up_amount_;
hurry_up_text_ = "";

kb_increase_ = 0;
kb_increase_real_ = 0;

player_wins_text_ = "";

// Fight setup
if room == r_fight {
	var _p1 = create_player(288, o_p1, is_cpu_p1_, 1, p1_char_);	// player 1
	var _p2 = create_player(352, o_p2, is_cpu_p2_, -1, p2_char_);	// player 2
	
	_p1.other_player_ = _p2;
	_p2.other_player_ = _p1;
	
	alarm[1] = global.one_second * hurry_up_amount_;	// Hurry up
	alarm[4] = global.one_second;						// Fight start
	
	round_start_text_ = "Round " + string(round_number_);
}

// Leaving the battle will turn off Story Mode, so you don't jump into a
// CPU game and enter Story Mode instead
if room != r_fight && room != r_story {
	story_mode_ = false;
}