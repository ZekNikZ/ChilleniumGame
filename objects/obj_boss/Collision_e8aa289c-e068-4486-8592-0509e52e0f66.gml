if (other.shape == SHAPE.TRIANGLE && other.image_yscale == -1) {
	spt_screenshake(16, 60);
	if (global.gamecolor != COLOR.WHITE) {
		audio_play_sound(sfx_kill, 1, false);
		switch (target_color) {
			case COLOR.RED:
			    target_color = COLOR.GREEN;
				global.cp_color = COLOR.GREEN;
				global.hit_checkpoint = true;
				break;
			case COLOR.GREEN:
				target_color = COLOR.YELLOW;
				global.cp_color = COLOR.YELLOW;
				global.hit_checkpoint = true;
				break;
			case COLOR.YELLOW:
				target_color = COLOR.BLUE;
				global.cp_color = COLOR.BLUE;
				global.hit_checkpoint = true;
				break;
			case COLOR.BLUE:
				instance_destroy();
				break;
		}
		global.gamecolor = COLOR.WHITE;
		spawn_cooldown = 5;
	}
} else if (!other.dead) {
	//room_restart();
	other.trans_state = 3;
	other.trans_on = true;
}