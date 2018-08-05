draw_set_color(c_white);
draw_text_transformed(16, view_hport[0]-32, "Z = Select", 0.5, 0.5, image_angle);
draw_text_transformed(176, view_hport[0]-32, "X = Back", 0.5, 0.5, image_angle);
draw_text_transformed(view_wport[0]-298, view_hport[0]-32, "Up/Down = Navigate", 0.5, 0.5, image_angle);
draw_set_color(c_white);

if room == r_multiplayer_menu {
	if o_game.simple_ {
		draw_set_color(c_green);	
	} else {
		draw_set_color(c_white);
	}
	draw_text_transformed(16, view_hport[0]-64, "S = Simple Mode - Only basic attacks and block!", 0.5, 0.5, image_angle);
	draw_set_color(c_white);
}