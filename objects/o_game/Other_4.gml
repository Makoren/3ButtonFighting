// Spawns the players in the room with specific settings
if room == r_fight {
	var _p1 = create_player(288, o_p1, is_cpu_p1_, 1);	// player 1
	var _p2 = create_player(352, o_p2, is_cpu_p2_, -1);	// player 2
	
	_p1.other_player_ = _p2;
	_p2.other_player_ = _p1;
	
	alarm[1] = global.one_second * hurry_up_amount_;
}