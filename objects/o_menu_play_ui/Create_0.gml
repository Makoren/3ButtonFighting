enum options_play {
	story,
	multi
}

option_[options_play.story] = "Story Mode";
option_[options_play.multi] = "Multiplayer";

option_length_ = array_length_1d(option_);

index_ = options_play.story;