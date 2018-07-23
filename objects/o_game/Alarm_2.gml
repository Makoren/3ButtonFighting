/// @description Game end timer
if story_mode_ && story_fight_counter_ < 3 {
	room_restart();
} else {
	room_goto(r_menu_main);
}
global.p1_rounds_won = 0;
global.p2_rounds_won = 0;
round_number_ = 1;