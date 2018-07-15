/// @description Win state
if animation_hit_frame(0) {
	image_speed = 5;
}

if animation_hit_frame(image_number-1) {
	image_speed = 0;
}