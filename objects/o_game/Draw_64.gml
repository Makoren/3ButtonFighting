// Timer
if room == r_fight {
	draw_set_halign(fa_center);
	draw_text(view_wport[0]/2, 16, timer_real_);
	draw_text(view_wport[0]/2, 64, hurry_up_text_);
	draw_set_halign(fa_left);
}