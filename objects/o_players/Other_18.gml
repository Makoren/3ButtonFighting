/// @description Special state
image_speed = 10;

switch char_ {
	case char.bassik:
		mach_punch(id);
		break;
	case char.brutus:
		raging_blows(id);
		break;
	case char.viper:
		serpent_strike(id);
		break;
	default:
		show_message("You should not be able to get here.");
		break;
}

if char_ == char.viper {
	if animation_hit_frame(3) {
		state_ = player.idle;
	}
}