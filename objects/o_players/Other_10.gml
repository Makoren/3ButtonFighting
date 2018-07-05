/// @description Idle state
image_speed = 4;	// Note that the sprite speed in each animation's editor has been set
					// to 1, due to some difficulties with image_speed and image_index.

/*
NOTE ABOUT CREATING NEW STATES:
Make sure that you set up each new state in the player enum, and make sure that any input
involved is negated when either player is a CPU.
*/