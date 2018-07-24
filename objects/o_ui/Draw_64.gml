// Draw player energy and wins

// P1
draw_set_color(c_white);
draw_text(16, 16, global.p1_rounds_won);
if !o_game.simple_ {
	draw_set_color(c_blue);
	draw_text(64, 16, p1_energy_);
}
draw_set_color(c_white);

// P2
draw_text(view_wport[0]-24, 16, global.p2_rounds_won);
if !o_game.simple_ {
	draw_set_color(c_red);
	draw_text(view_wport[0]-128, 16, p2_energy_);
}
draw_set_color(c_white);