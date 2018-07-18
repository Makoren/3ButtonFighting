enum options_multiplayer {
	player,
	cpu
}

option_[options_multiplayer.player] = "Against Player";
option_[options_multiplayer.cpu] = "Against CPU";

option_length_ = array_length_1d(option_);

index_ = options_multiplayer.player;