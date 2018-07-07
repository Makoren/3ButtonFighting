enum options {
	play,
	settings,
	quit
}

option_[options.play] = "Play";
option_[options.settings] = "Settings";
option_[options.quit] = "Quit";

option_length_ = array_length_1d(option_);

index_ = options.play;