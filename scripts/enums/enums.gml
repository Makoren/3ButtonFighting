// Player states
// To create a new one, append it here, and create a new user event in o_players based on the
// enum index.
enum player {
	idle,
	light,
	heavy,
	counter,
	hit,
	charge,
	block,
	dodge,
	special,
	stun,
	win,
	no_move
}

// Character states
// To create a new character, append the name here, add a switch case to create_player with all
// the information, and change the character select screen to include the new character.
enum char {
	bassik,
	brutus
}