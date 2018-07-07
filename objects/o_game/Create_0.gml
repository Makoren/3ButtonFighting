// delta time
global.one_second = game_get_speed(gamespeed_fps);

// font
global.font = font_add("Gaegu-Bold.ttf", 32, true, false, 32, 128);
draw_set_font(global.font);

// fight variables
global.hit_timer = global.one_second/2;
global.kb_light = 30;
global.kb_heavy = 60;
global.max_charge = 25;

// input variables
global.p1_attack_key = ord("Z");
global.p1_block_key = ord("X");
global.p2_attack_key = vk_left;
global.p2_block_key = vk_down;

global.p1_gamepad = false;
global.p2_gamepad = false;

// menu input
global.input_up = [vk_up, gp_padu];
global.input_down = [vk_down, gp_padd];
global.input_select = [ord("Z"), gp_face1];
global.input_back = [ord("X"), gp_face2];

// Round variables
global.p1_rounds_won = 0;
global.p2_rounds_won = 0;

// Instance variables
is_cpu_p1_ = false;
is_cpu_p2_ = false;