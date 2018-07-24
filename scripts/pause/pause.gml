///@arg id_of_manager
///@arg timer
var _id = argument0;
var _timer = argument1;

with _id {
	// The _timer variable holds a time in seconds, so it needs to be converted into frames.
	alarm[3] = abs(_timer) * global.one_second;
	
	// Creates a sprite for the paused screen. This sprite is drawn in the Draw GUI event in o_game.
	paused_sprite_ = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
	
	// Be careful with the o_game alarms, since they will continue to run while o_game is active.
	instance_deactivate_all(true);
	instance_activate_object(o_ui);
}