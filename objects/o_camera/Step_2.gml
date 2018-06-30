/// @description Follow players
if instance_exists(o_p1) && instance_exists(o_p2) {
	var _x1 = o_p1.x;
	var _x2 = o_p2.x;
	
	// Locks the camera's x position between the two players.
	x = _x1 - ((_x1 - _x2)/2);
}