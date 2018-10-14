// Change the stage's color
if (global.clr_do_transitions) {
	if (global.targetcolor != target_color) {
	    audio_play_sound(sfx_colorchange, 1, false);
	}
	global.targetcolor = target_color;
	global.clr_transitioning = true;
} else {
	if (global.gamecolor != target_color) {
	    audio_play_sound(sfx_colorchange, 1, false);
	}
	global.gamecolor = target_color;
}