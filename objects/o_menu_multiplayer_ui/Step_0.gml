var _last_index = index_;
if keyboard_check_pressed(global.input_up[0]) || gamepad_button_check_pressed(0, global.input_up[1]) {
	index_ = max(--index_, 0);
}

if keyboard_check_pressed(global.input_down[0]) || gamepad_button_check_pressed(0, global.input_down[1]) {
	index_ = min(++index_, option_length_-1);
}

if _last_index != index_ {
	audio_play_sound(a_counter, 1, false);	
}

if keyboard_check_pressed(global.input_back[0]) || gamepad_button_check_pressed(0, global.input_back[1]) {
	room_goto(r_menu_main);
	audio_play_sound(a_slash, 2, false);
}

if keyboard_check_pressed(global.input_select[0]) || gamepad_button_check_pressed(0, global.input_select[1]) {
	switch (index_) {
		case options_multiplayer.player:
			room_goto(r_fight);
			o_game.is_cpu_p2_ = false;
			break;
		case options_multiplayer.cpu:
			room_goto(r_fight);
			o_game.is_cpu_p2_ = true;
			break;
	}
}
