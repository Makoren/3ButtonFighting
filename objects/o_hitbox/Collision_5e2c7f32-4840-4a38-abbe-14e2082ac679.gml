// owner_ is the player who created the hitbox (aka, the player who attacked)
// other is the player being hit by the hitbox

if other == owner_ exit;

if owner_.image_index == other.image_index && owner_.state_ == other.state_ {
	// Clink effect, just to make sure that players can't hit each other on the same frame
	invoke_clink(o_players);
} else {
	if !other.knocked_back_ {
		if owner_.state_ == player.light && other.state_ == player.block {
			// Counter
			invoke_counter(other);
		} else {
			// Player gets hit
			invoke_hit(other);
		}
	}
}