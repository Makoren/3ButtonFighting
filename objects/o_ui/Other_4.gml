// if not in fight room, destroy self
if room != r_fight && room != r_story {
	instance_destroy();
	p1_energy_ = 0;
	p2_energy_ = 0;
}