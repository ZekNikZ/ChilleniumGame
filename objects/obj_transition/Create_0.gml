/// @description Transition Variables
// Size variables and mode setup
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;
enum transition
{
	off,
	next,
	goto,
	restart,
	intro
}

mode = transition.intro;
percent = 1;
target = room;

enum activecolor
{
	white,
	red,
	yellow,
	blue,
	green
}

gamecolor = activecolor.white;