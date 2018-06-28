// Player input
attack_key_ = noone;
block_key_ = noone;

// Player variables
charge_level_ = 0;
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
	block
}

starting_state_ = player.idle;
state_ = starting_state_;

// Sprite lookup table
sprite_[player.idle] = s_player_idle;
sprite_[player.light] = s_player_light;
sprite_[player.heavy] = s_player_heavy;
sprite_[player.charge] = s_player_charge;
sprite_[player.hit] = s_player_hit;
sprite_[player.block] = s_player_block;
sprite_[player.counter] = s_player_counter;