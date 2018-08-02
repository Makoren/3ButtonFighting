// Draw player energy and wins

// P1
draw_set_color(c_white);
draw_rectangle_color(0, 0, 148, 64, c_black, c_black, c_black, c_black, false);
draw_text(16, 16, global.p1_rounds_won);
if !o_game.simple_ {
	draw_set_color(c_aqua);
	draw_text(64, 16, p1_energy_);
}
draw_set_color(c_white);

// P2
draw_rectangle_color(view_wport[0]-148, 0, view_wport[0], 64, c_black, c_black, c_black, c_black, false);
draw_text(view_wport[0]-30, 16, global.p2_rounds_won);
if !o_game.simple_ {
	draw_set_color(c_orange);
	draw_text(view_wport[0]-128, 16, p2_energy_);
}
draw_set_color(c_white);