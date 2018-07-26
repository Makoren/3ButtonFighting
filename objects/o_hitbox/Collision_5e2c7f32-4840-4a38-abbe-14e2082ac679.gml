// owner_ is the player who created the hitbox (aka, the player who attacked)
// other is the player being hit by the hitbox

if other == owner_ exit;

// This flag is turned to "false" if I don't want the hitbox knocking the player back
var _exists = true;

if attack_ == "light" {
	if instance_number(o_hitbox) > 1 {
		_exists = false;
	}
}

if attack_ == "counter" && other.is_raging_ {
	_exists = false;
}

if attack_ == "viper_special" {
	other.alarm[6] = global.one_second * 5;
	_exists = false;
}

if other.state_ != player.hit {
	if attack_ == "special" {
		invoke_stun(other, 30);
		_exists = false;
		owner_.hit_by_special_ = true;
	}

	if owner_.image_index == other.image_index && owner_.state_ == other.state_ {
		// Clink effect, just to make sure that players can't hit each other on the same frame
		audio_play_sound(a_clink, 10, false);
	}
	else {
		if _exists {
			if !other.dodged_ {
				if !other.knocked_back_ {
					if owner_.state_ == player.light && other.state_ == player.block {
						// Counter
						invoke_counter(other);
					} else {
						// Player gets hit
						invoke_hit(other);
						connected_ = true;
						if attack_ == "light" && (owner_.char_ == char.viper && owner_.charge_level_ >= (owner_.max_charge_ - 3)) {
							invoke_stun(other, 2);
						}
					}
				}
			}
		}
	}
}