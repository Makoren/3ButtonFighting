/// @description Next round timer
if global.p1_rounds_won >= 2 {
	hurry_up_text_ = "";
	player_wins_text_ = "Player 1 Wins!";
	alarm[2] = 180;
	is_game_over_ = true;
	with o_p1 {
		state_ = player.win;
		image_index = 0;
	}
	
	if story_mode_ {
		story_fight_counter_++;
	}
	
}
else if global.p2_rounds_won >= 2 {
	hurry_up_text_ = "";
	player_wins_text_ = "Player 2 Wins!";
	alarm[2] = 180;
	is_game_over_ = true;
	with o_p2 {
		state_ = player.win;
		image_index = 0;
	}
}
else {
	room_restart();
	round_number_++;
}