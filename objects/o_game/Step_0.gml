// Timer increment
if room == r_fight {
	timer_++;
	timer_real_ = floor(timer_ / 60);
	
	if hurry_up_ {
		kb_increase_++;
		
		// Increase the number here to decrease player knockback during "Hurry Up!".
		kb_increase_real_ = floor(kb_increase_ / 4);
	}
}