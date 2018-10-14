/// @description Draw Transition
// Set up the shader for the draw


// Draw White Panning Bars
if (mode != TRANSITION_STATE.OFF)
{
	
shader_set(sdr_colorizer);
uCOLOR = shader_get_uniform(sdr_colorizer, "f_Color");
uFADECOLOR = shader_get_uniform(sdr_colorizer, "f_FadeColor");
uFADEPOS = shader_get_uniform(sdr_colorizer, "f_FadePos");
shader_set_uniform_f(uCOLOR, global.cc_r, global.cc_g, global.cc_b, global.cc_a);
shader_set_uniform_f(uFADECOLOR, 1, 1, 1, 1);
shader_set_uniform_f(uFADEPOS, timer / timer_max);

surface_set_target(surface);
	draw_clear_alpha(c_white,0); 

	switch (global.gamecolor)
	{
		case COLOR.WHITE: default:
		{
			draw_set_color(c_white);
			break;
		}
		case COLOR.RED:
		{
			draw_set_color(c_red);
			break;
		}
		case COLOR.BLUE:
		{
			draw_set_color(c_blue);
			break;
		}
		case COLOR.YELLOW:
		{
			draw_set_color(c_yellow);
			break;
		}	
		case COLOR.GREEN:
		{
			draw_set_color(c_green);
			break;
		}
	}
	draw_set_color(c_white);
	draw_rectangle(0, 0, w, percent * h_half, false);
	draw_rectangle(0, h, w, h - (percent * h_half), false);
	

surface_reset_target();

draw_surface(surface, 0, 0);
}