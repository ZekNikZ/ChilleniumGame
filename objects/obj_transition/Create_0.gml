/// @description Transition Variables
// Size variables and mode setup
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;

mode = TRANSITION_STATE.INTRO;
percent = 1;
target = room;

timer = 0;
timer_max = 60;

global.gamecolor = COLOR.WHITE;

surface = surface_create(room_width, room_height);