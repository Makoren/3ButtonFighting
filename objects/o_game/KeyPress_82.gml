if room == r_fight {
	room_restart();
	timer_ = 0;
	alarm[1] = global.one_second * hurry_up_amount_;
	hurry_up_text_ = "";
	kb_increase_ = 0;
	kb_increase_real_ = 0;
	hurry_up_ = false;
}