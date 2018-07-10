/// @description Next round timer
if global.p1_rounds_won >= 2 {
	hurry_up_text_ = "";
	player_wins_text_ = "Player 1 Wins!";
	alarm[2] = 180;
	is_game_over_ = true;
}
else if global.p2_rounds_won >= 2 {
	hurry_up_text_ = "";
	player_wins_text_ = "Player 2 Wins!";
	alarm[2] = 180;
	is_game_over_ = true;
}
else {
	room_restart();
}