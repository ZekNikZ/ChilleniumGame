if (global.music == 0) {
	audio_stop_sound(sfx_music1);
	audio_sound_gain(sfx_music1, 0.5, 0);
	audio_sound_pitch(sfx_music1, 1);
	audio_play_sound(sfx_music1, 0, true);
	global.music = 1;
}

respawn_played = false;