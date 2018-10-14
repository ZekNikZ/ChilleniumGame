cnt++;

var c_inner_color = make_color_hsv((cnt * color_spd) % 256, 128, 255);	

draw_sprite_ext(spr_hexagon, -1, x, y, scl_in, scl_in, rot_spd_in * cnt, c_inner_color, 1);

if (global.gamecolor != target_color) {
	shader_set(sdr_colorizer);
	uCOLOR = shader_get_uniform(sdr_colorizer, "f_Color");
	uFADECOLOR = shader_get_uniform(sdr_colorizer, "f_FadeColor");
	uFADEPOS = shader_get_uniform(sdr_colorizer, "f_FadePos");
	shader_set_uniform_f(uCOLOR, cc_r, cc_g, cc_b, cc_a);
	shader_set_uniform_f(uFADECOLOR, global.tc_r, global.tc_g, global.tc_b, global.tc_a);
	shader_set_uniform_f(uFADEPOS, 0);
	
	draw_sprite_ext(spr_hexagon, -1, x, y, scl_out, scl_out, rot_spd_out * cnt, c_white, 1);
	
	shader_reset();
}

if (tutorial) {
	draw_sprite_ext(spr_text_boss_red, -1, 1280, 1344, 0.5, 0.5, 0, c_white, 1);
}