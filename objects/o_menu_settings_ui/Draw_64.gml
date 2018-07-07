draw_set_halign(fa_center);
for (var _i=0; _i<option_length_; _i++) {
	if _i == index_ {
		draw_set_color(c_blue);	
	} else {
		draw_set_color(c_red);	
	}
	draw_text(x, y+_i*40, option_[_i]);
}
draw_set_color(c_white);
draw_set_halign(fa_left);
