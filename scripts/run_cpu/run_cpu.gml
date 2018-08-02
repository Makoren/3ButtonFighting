// This will hold a majority of CPU logic.
var _move_num = 0;

// Determines if the attack or block key should be pressed
if state_ == player.idle {
	attack_key_ = false;
	block_key_ = false;
	dodge_key_ = false;
	special_key_ = false;

	// Determine how the CPU will act through the counter variables
	// If none of the conditions are met, the CPU will just throw a random attack
	if !instance_exists(other_player_) exit;
	
	if energy_ >= 100 && other_player_.state_ == player.idle {
		special_key_ = true;
	}
	else if	used_light_ > used_heavy_+2 &&
		used_light_ > used_counter_+2 {
		block_key_ = true;
		used_light_--;
	}
	else if used_heavy_ > used_light_+2 &&
			used_heavy_ > used_counter_+2 {
		attack_key_ = true;
		used_heavy_--;
	}
	else {
		_move_num = round(random(2));
		
		switch _move_num {
			case 0:
				attack_key_ = true;
				break;
			case 1:
				attack_key_ = true;
				break;
			case 2:
				block_key_ = true;
				break;
			default:
				show_message("Something went wrong in run_cpu().\nIf you see this as a player, please contact the developer.");
				break;
		}
	}
}

// Determines when the attack key is released
if state_ == player.charge {
	_move_num = round(random(20));
	
	switch _move_num {
		case 0:
			attack_key_ = false;
			break;
		default:
			break;
	}
	
}

// Determines when the block key is released
if state_ == player.block {
	_move_num = round(random(10));
	
	switch _move_num {
		case 0:
			block_key_ = false;
			break;
		default:
			break;
	}
}