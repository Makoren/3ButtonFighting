enum options_settings {
	p1keys,
	p1gpad,
	p2keys,
	p2gpad
}

option_[options_settings.p1keys] = "P1 Keyboard";
option_[options_settings.p1gpad] = "P1 Gamepad";
option_[options_settings.p2keys] = "P2 Keyboard";
option_[options_settings.p2gpad] = "P2 Gamepad";


option_length_ = array_length_1d(option_);

index_ = options_play.story;