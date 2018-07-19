// Player input
attack_key_ = noone;
block_key_ = noone;
dodge_key_ = noone;
special_key_ = noone;
light_key_ = noone;

// Player variables
charge_level_ = 0;
max_charge_ = global.max_charge;
attacking_ = false;
knockback_ = 0;			// The amount of knockback your attacks do.
knocked_back_ = false;	// Checks whether you are being knocked back.
knockback_to_ = x;		// The position you are being knocked back to. Runs every frame in hit state.

// Player states
enum player {
	idle,
	light,
	heavy,
	counter,
	hit,
	charge,
	block,
	dodge,
	special,
	stun,
	win,
	no_move
}

// Commented out until required, will likely be using states for each character. This might end
// up in a different object, since the player will need to be created differently depending on
// the selected character.
/*enum character {
	bassik,
	brutus,
	viper,
	etc
}*/

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
dodge_length_ = global.dodge_length;
hit_by_special_ = false;
special_loop_counter_ = 0;
energy_ = 0;

// Sprite lookup table
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