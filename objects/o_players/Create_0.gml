// Player input
attack_key_ = noone;
block_key_ = noone;
dodge_key_ = noone;
special_key_ = noone;
light_key_ = noone;

// Player variables
charge_level_ = 0;
attacking_ = false;
knocked_back_ = false;	// Checks whether you are being knocked back.
knockback_to_ = x;		// The position you are being knocked back to. Runs every frame in hit state.

// create_player variables
kb_light_ = global.kb_light;
kb_heavy_ = global.kb_heavy;
kb_counter_ = global.kb_counter;
kb_special_ = global.kb_special;
max_charge_ = global.max_charge;
dodge_length_ = global.dodge_length;

// CPU variables, these variables are designed to count how many times their
// opponent has used attacks. What the CPU will do next will be based on these counters.
// Check run_cpu() for more details.
used_light_ = 0;
used_heavy_ = 0;
used_counter_ = 0;

// Round variables
round_ = 1;
rounds_won_ = 0;

// Misc variables
starting_state_ = player.no_move;
state_ = starting_state_;
is_cpu_ = false;
other_player_ = noone;
dodged_ = false;
hit_by_special_ = false;
special_loop_counter_ = 0;
energy_ = 0;

// Sprite lookup table
// Use if statements to separate lookup tables
sprite_[player.idle] = s_player_idle;
sprite_[player.light] = s_player_light;
sprite_[player.heavy] = s_player_heavy;
sprite_[player.charge] = s_player_charge;
sprite_[player.hit] = s_player_hit;
sprite_[player.block] = s_player_block;
sprite_[player.counter] = s_player_counter;
sprite_[player.dodge] = s_player_dodge;
sprite_[player.special] = s_player_special;
sprite_[player.stun] = s_player_stun;
sprite_[player.win] = s_player_win;
sprite_[player.no_move] = s_player_idle;
