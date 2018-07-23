if o_game.is_cpu_p2_ {
	o_game.p2_char_ = choose_char();
	room_goto(r_fight);
} else {
	room_goto(r_char_select_menu_p2);
}