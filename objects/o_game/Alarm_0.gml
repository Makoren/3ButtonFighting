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