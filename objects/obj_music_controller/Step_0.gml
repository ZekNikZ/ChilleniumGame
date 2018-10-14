
	if (!respawn_played && global.last_room == room) {
		audio_play_sound(sfx_respawn, 2, false);
	}
	respawn_played = true;
	
	global.last_room = room;
