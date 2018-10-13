// Only display if the target color does not match the stage color
if (target_color != global.gamecolor) {
	// Determine the RGBA values of the target color
	spt_set_color();

	// Set up the shader for the drawspt_set_color();
	shader_set(sdr_colorizer);
	uCOLOR = shader_get_uniform(sdr_colorizer, "f_Color");
	uFADECOLOR = shader_get_uniform(sdr_colorizer, "f_FadeColor");
	uFADEPOS = shader_get_uniform(sdr_colorizer, "f_FadePos");
	shader_set_uniform_f(uCOLOR, cc_r, cc_g, cc_b, cc_a);
	shader_set_uniform_f(uFADECOLOR, global.tc_r, global.tc_g, global.tc_b, global.tc_a);
	shader_set_uniform_f(uFADEPOS, 0);

	// Draw the color changer
	draw_self();

	shader_reset();
}