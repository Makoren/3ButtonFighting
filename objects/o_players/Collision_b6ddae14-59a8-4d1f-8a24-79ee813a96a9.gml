instance_destroy();

if object_index == o_p1 {
	global.p2_rounds_won++;
}
else if object_index == o_p2 {
	global.p1_rounds_won++;
}

// Next round after 1 second
with o_game {
	alarm[0] = 60;
}