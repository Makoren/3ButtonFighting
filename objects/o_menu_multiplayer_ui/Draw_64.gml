draw_set_halign(fa_center);
var _x_scale = 1;
for (var _i=0; _i<option_length_; _i++) {
	if _i == index_ {
		draw_set_color(c_green);
		_x_scale = 1.5;
	} else {
		draw_set_color(c_white);
		_x_scale = 1;
	}
	draw_text_transformed(view_wport[0]/2, 100+_i*40, option_[_i], _x_scale, 1, image_angle);
}
draw_set_color(c_white);
draw_set_halign(fa_left);
