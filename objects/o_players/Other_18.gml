/// @description Special state
switch char_ {
	case char.bassik:
		mach_punch(id);
		break;
	case char.brutus:
		raging_blows(id);
		break;
	default:
		show_message("You should not be able to get here.");
		break;
}