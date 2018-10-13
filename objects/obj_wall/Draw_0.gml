// Set up the shader for the draw
shader_set(sdr_colorizer);
uCOLOR = shader_get_uniform(sdr_colorizer, "f_Color");
uFADECOLOR = shader_get_uniform(sdr_colorizer, "f_FadeColor");
uFADEPOS = shader_get_uniform(sdr_colorizer, "f_FadePos");
shader_set_uniform_f(uCOLOR, global.cc_r, global.cc_g, global.cc_b, global.cc_a);
shader_set_uniform_f(uFADECOLOR, global.tc_r, global.tc_g, global.tc_b, global.tc_a);
shader_set_uniform_f(uFADEPOS, 0);

// Check surroundings to see which sides of the wall to draw
for(var i = -1; i <= 1; i++) {
	for(var j = -1; j <= 1; j++) {
		if (i == 0 && j == 0) continue;
		if (!place_meeting(x + j * sprite_width, y + i * sprite_height, obj_wall)) {
			draw_sprite_ext(spr_walls, (i + 1) * 3 + (j + 1), x, y, 1, 1, 0, c_white, 1);
		}
	}
}

shader_reset();