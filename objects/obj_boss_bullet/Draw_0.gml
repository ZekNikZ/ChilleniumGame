cnt++;

spt_set_color();

if (halo) {
	draw_sprite_ext(spr_halo, -1, x, y, 1, 1, 0, c_white, 1);
}

shader_set(sdr_colorizer);
uCOLOR = shader_get_uniform(sdr_colorizer, "f_Color");
uFADECOLOR = shader_get_uniform(sdr_colorizer, "f_FadeColor");
uFADEPOS = shader_get_uniform(sdr_colorizer, "f_FadePos");
shader_set_uniform_f(uCOLOR, cc_r, cc_g, cc_b, cc_a);
shader_set_uniform_f(uFADECOLOR, global.tc_r, global.tc_g, global.tc_b, global.tc_a);
shader_set_uniform_f(uFADEPOS, 0);

draw_sprite_ext(spr_boss_bullet, -1, x, y, 1, 1, cnt * 3, c_white, 1);

shader_reset();