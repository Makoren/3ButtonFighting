// ************************* Global variables ************************* \\

// delta time
global.one_second = game_get_speed(gamespeed_fps);

// font
global.font = font_add("PressStart2P-Regular.ttf", 20, true, false, 32, 128);
draw_set_font(global.font);

// fight variables, most of these might not be needed once I start adding new characters
global.hit_timer = global.one_second/2;
global.kb_light = 30;
global.kb_heavy = 60;
global.kb_counter = 60;
global.kb_special = 160;
global.max_charge = 20;
global.dodge_length = 30;

// input variables
global.p1_attack_key = ord("Z");
global.p1_block_key = ord("X");
global.p1_dodge_key = ord("C");
global.p1_special_key = ord("S");
global.p1_light_key = ord("D");

global.p2_attack_key = ord("J");
global.p2_block_key = ord("K");
global.p2_dodge_key = ord("L");
global.p2_special_key = ord("I");
global.p2_light_key = ord("O");

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

// ************************* Instance variables ************************* \\

// Fight room variables
timer_ = 0;					// Timer in frames
timer_real_ = 0;			// Timer shown on screen

kb_increase_ = 0;			// Increments at the same amount as the timer after "Hurry Up!" appears
kb_increase_real_ = 0;		// Increases knockback on both players, based on kb_increase_

hurry_up_ = false;			// Boolean for player objects to turn reddish when "Hurry Up!" appears
hurry_up_amount_ = 30;		// The amount of seconds until "Hurry Up!" appears
hurry_up_text_ = "";		// Displays when 30 seconds have passed

player_wins_text_ = "";		// Displays which player has won after the battle is over
is_game_over_ = false;		// Checks if the game is over.

round_number_ = 1;			// The number of rounds that have played
round_start_text_ = "";		// Displays "Round round_number_" when the room starts

is_cpu_p1_ = false;
is_cpu_p2_ = false;

simple_ = false;			// Determines if simple mode is on or off