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
		case options_settings.p1keys:
			global.p1_attack_key = ord("Z");
			global.p1_block_key = ord("X");
			global.p1_dodge_key = ord("C");
			global.p1_gamepad = false;
			audio_play_sound(a_clink, 2, false);
			break;
		case options_settings.p1gpad:
			global.p1_attack_key = gp_face1;
			global.p1_block_key = gp_face2;
			global.p1_dodge_key = gp_face3;
			global.p1_gamepad = true;
			audio_play_sound(a_clink, 2, false);
			break;
		case options_settings.p2keys:
			global.p2_attack_key = vk_left;
			global.p2_block_key = vk_down;
			global.p2_dodge_key = vk_right;
			global.p2_gamepad = false;
			audio_play_sound(a_clink, 2, false);
			break;
		case options_settings.p2gpad:
			global.p2_attack_key = gp_face1;
			global.p2_block_key = gp_face2;
			global.p2_dodge_key = gp_face3;
			global.p2_gamepad = true;
			audio_play_sound(a_clink, 2, false);
			break;
	}
}
