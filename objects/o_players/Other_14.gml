/// @description Hit state
image_speed = 0;

// Passively checks if you have a knockback_to_ amount, and lerps you to that amount.
x = lerp(x, knockback_to_, 0.2);