// This will hold a majority of CPU logic.
var _rnum = 0;

// Determines if the attack or block key should be pressed
if state_ == player.idle {
	attack_key_ = false;
	block_key_ = false;

	// Chooses a random number between 0 and 2 to determine which move the CPU will use
	// when all counters are equal
	_rnum = cpu_random(2);

	switch _rnum {
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
			show_message("Something went wrong in run_cpu()");
			break;
	}
}

// Determines when the attack key is released
if state_ == player.charge {
	_rnum = cpu_random(10);
	
	switch _rnum {
		case 0:
			attack_key_ = false;
			break;
		default:
			break;
	}
	
}

// Determines when the block key is released
if state_ == player.block {
	_rnum = cpu_random(10);
	
	switch _rnum {
		case 0:
			block_key_ = false;
			break;
		default:
			break;
	}
}