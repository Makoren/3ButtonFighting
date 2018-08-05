enum options {
	play,
	controls,
	quit
}

option_[options.play] = "Play";
option_[options.controls] = "Controls";
option_[options.quit] = "Quit";

option_length_ = array_length_1d(option_);

index_ = options.play;