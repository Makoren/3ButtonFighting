// owner_ is the player who created the hitbox (aka, the player who attacked)
// other is the player being hit by the hitbox

// This line just stops the owner from hitting himself
if other == owner_ exit;

var _exists = true;

if attack_ == "light" {
	if instance_number(o_hitbox) > 1 {
		_exists = false;
	}
}

if other.state_ != player.hit {
	if attack_ == "special" && !other.dodged_ {
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
					}
				}
			}
		}
	}
}