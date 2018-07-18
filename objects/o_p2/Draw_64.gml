draw_set_color(c_white);
draw_text(view_wport[0]-24, 16, global.p2_rounds_won);
if !o_game.simple_ {
	draw_set_color(c_red);
	draw_text(view_wport[0]-128, 16, energy_);
}
draw_set_color(c_white);