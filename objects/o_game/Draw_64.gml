if room == r_fight {
	draw_set_halign(fa_center);
	
	// Timer
	draw_text(view_wport[0]/2, 16, timer_real_);
	
	// Hurry Up!
	if !is_game_over_ draw_text(view_wport[0]/2, 64, hurry_up_text_);
	
	// Player X Wins!
	draw_set_color(c_yellow);
	draw_text(view_wport[0]/2, 64, player_wins_text_);
	draw_set_color(c_white);
	
	draw_set_halign(fa_left);
}