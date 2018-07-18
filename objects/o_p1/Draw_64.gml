draw_set_color(c_white);
draw_text(16, 16, global.p1_rounds_won);
if !o_game.simple_ {
	draw_set_color(c_blue);
	draw_text(64, 16, energy_);
}
draw_set_color(c_white);