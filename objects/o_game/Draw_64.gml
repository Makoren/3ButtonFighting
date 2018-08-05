var _color = make_color_rgb(25, 25, 25);

if room == r_fight {
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, view_wport[0], 112, _color, _color, _color, _color, false);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	
	// Round start
	draw_text(view_wport[0]/2, 64, round_start_text_);
	
	// Timer
	draw_text(view_wport[0]/2, 16, timer_real_);
	
	// Hurry Up!
	if !is_game_over_ {
		draw_set_color(c_red);
		draw_text(view_wport[0]/2, 64, hurry_up_text_);
	}
	
	// Player X Wins!
	draw_set_color(c_yellow);
	draw_text(view_wport[0]/2, 64, player_wins_text_);
	draw_set_color(c_white);
	
	draw_set_halign(fa_left);
} else {
	draw_set_alpha(0.75);
	draw_rectangle_color(0, 0, view_wport[0], view_hport[0], _color, _color, _color, _color, false);
	draw_set_alpha(1);
}