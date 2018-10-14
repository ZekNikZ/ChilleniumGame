if (other.shape == SHAPE.TRIANGLE && other.image_yscale == -1) {
	spt_screenshake(16, 60);
	if (global.gamecolor != COLOR.WHITE) {
		switch (target_color) {
			case COLOR.RED:
			    target_color = COLOR.GREEN;
				break;
			case COLOR.GREEN:
				target_color = COLOR.YELLOW;
				global.cp_color = COLOR.WHITE;
				global.hit_checkpoint = true;
				break;
			case COLOR.YELLOW:
				target_color = COLOR.BLUE;
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