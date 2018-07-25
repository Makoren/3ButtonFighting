draw_set_halign(fa_center);
for (var _i=0; _i<option_length_; _i++) {
	if _i == index_ {
		draw_set_color(c_gray);	
	} else {
		draw_set_color(c_black);	
	}
	draw_text(view_wport[0]/2, 100+_i*40, option_[_i]);
}
draw_set_color(c_black);
draw_text(view_wport[0]/2, 32, "Character Select (P2)");
draw_set_color(c_white);
draw_set_halign(fa_left);