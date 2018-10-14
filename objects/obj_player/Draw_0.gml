// Set up the shader for the draw
shader_set(sdr_colorizer);
uCOLOR = shader_get_uniform(sdr_colorizer, "f_Color");
uFADECOLOR = shader_get_uniform(sdr_colorizer, "f_FadeColor");
uFADEPOS = shader_get_uniform(sdr_colorizer, "f_FadePos");
shader_set_uniform_f(uCOLOR, global.cc_r, global.cc_g, global.cc_b, global.cc_a);
shader_set_uniform_f(uFADECOLOR, global.tc_r, global.tc_g, global.tc_b, global.tc_a);
shader_set_uniform_f(uFADEPOS, 0);

if (trans_on) {
	switch (trans_state) {
		case 0:
			trans_state = 1;
			break;
		case 1:
			trans_cnt++;
			draw_sprite_ext(sprite_index, -1, x, y, 1 - trans_cnt / trans_cnt_max, 1 - trans_cnt / trans_cnt_max, trans_cnt / trans_cnt_max * 360, c_white, 1);
			if (trans_cnt >= trans_cnt_max) {
				trans_state = 2;
				trans_cnt = 0;
				sprite_index = next_sprite_index;
			}
			break;
		case 2:
			trans_cnt++;
			draw_sprite_ext(sprite_index, -1, x, y, trans_cnt / trans_cnt_max, trans_cnt / trans_cnt_max, trans_cnt / trans_cnt_max * 360, c_white, 1);
			if (trans_cnt >= trans_cnt_max) {
				trans_state = 0;
				trans_cnt = 0;
				trans_on = false;
			}
			break;
		case 3:
			audio_play_sound(sfx_die, 2, false);
			trans_state = 4;
			dead = true;
			break;
		case 4:
			trans_cnt++;
			draw_sprite_ext(sprite_index, -1, x, y, 1 - trans_cnt / trans_cnt_max / 3, 1 - trans_cnt / trans_cnt_max / 3, trans_cnt / trans_cnt_max / 3 * 360, c_white, 1);
			if (trans_cnt >= trans_cnt_max * 3) {
				spt_transition(TRANSITION_STATE.RESTART, room);
				//room_restart();
				trans_state = 0;
				trans_cnt = 0;
				trans_on = false;
				scl = 0;
			}
			break;
	}
} else {
	// Draw the player
	//draw_sprite_ext(sprite_index, -1, x, y, scl, scl * (1-2*clamp(air_time, 0, 5) / 5), 0, c_white, 1);
	if (slamming) {
		draw_sprite_ext(spr_player_triangle1, -1, x, y, scl, scl, 0, c_white, 1);
	} else {
		draw_sprite_ext(sprite_index, -1, x, y, scl, scl, 0, c_white, 1);
	}
}

shader_reset();