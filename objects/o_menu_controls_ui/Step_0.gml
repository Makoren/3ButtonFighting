if keyboard_check_pressed(global.input_back[0]) || gamepad_button_check_pressed(0, global.input_back[1]) {
	room_goto(r_menu_main);
	audio_play_sound(a_slash, 2, false);
}