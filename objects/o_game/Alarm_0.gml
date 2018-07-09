/// @description Next round timer
if global.p1_rounds_won >= 2 {
	show_message("Player 1 Wins!");
	room_goto(r_menu_main);
}
else if global.p2_rounds_won >= 2 {
	show_message("Player 2 Wins!");
	room_goto(r_menu_main);
}
else {
	room_restart();
}

// Reset fight variables
timer_ = 0;
alarm[1] = global.one_second * hurry_up_amount_;
hurry_up_text_ = "";
kb_increase_ = 0;
kb_increase_real_ = 0;
hurry_up_ = false;