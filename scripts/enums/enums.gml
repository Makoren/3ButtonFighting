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