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

if keyboard_check_pressed(global.input_select[0]) || gamepad_button_check_pressed(0, global.input_select[1]) {
	switch (index_) {
		case options.play:
			room_goto(r_multiplayer_menu);
			audio_play_sound(a_clink, 2, false);
			break;
		case options.controls:
			room_goto(r_menu_controls);
			audio_play_sound(a_clink, 2, false);
			break;
		case options.quit:
			game_end();
			break;
	}
}
