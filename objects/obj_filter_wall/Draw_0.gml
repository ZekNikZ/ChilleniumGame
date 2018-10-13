if (global.gamecolor != target_color) {
	spt_set_color();
	
	solid = true;
	image_xscale = 1;
	image_yscale = 1;
	shader_set(sdr_colorizer);
	uCOLOR = shader_get_uniform(sdr_colorizer, "f_Color");
	uFADECOLOR = shader_get_uniform(sdr_colorizer, "f_FadeColor");
	uFADEPOS = shader_get_uniform(sdr_colorizer, "f_FadePos");
	shader_set_uniform_f(uCOLOR, cc_r, cc_g, cc_b, cc_a);
	shader_set_uniform_f(uFADECOLOR, global.tc_r, global.tc_g, global.tc_b, global.tc_a);
	shader_set_uniform_f(uFADEPOS, 0);

	for(var i = -1; i <= 1; i++) {
		for(var j = -1; j <= 1; j++) {
			if (!place_meeting(x + j * sprite_width, y + i * sprite_height, obj_wall)) {
				draw_sprite_ext(spr_walls, (i + 1) * 3 + (j + 1), x, y, 1, 1, 0, c_white, 1);
			}
		}
	}

	shader_reset();
} else {
	solid = false;
	image_xscale = 0;
	image_yscale = 0;
}