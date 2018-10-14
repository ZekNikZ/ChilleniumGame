// Change the stage's color
if (global.clr_do_transitions) {
	global.targetcolor = target_color;
	global.clr_transitioning = true;
} else {
	global.gamecolor = target_color;
}

audio_play_sound(sfx_colorchange, 1, false);

instance_destroy();