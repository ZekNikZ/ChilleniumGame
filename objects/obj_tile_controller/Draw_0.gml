var cc_r, cc_g, cc_b, cc_a;
var tc_r, tc_g, tc_b, tc_a;

switch (global.gamecolor) {
	case activecolor.white:
		cc_r = 1;
		cc_g = 1;
		cc_b = 1;
		cc_a = 1;
		break;
	case activecolor.red:
		cc_r = 1;
		cc_g = 0;
		cc_b = 0;
		cc_a = 1;
		break;
	case activecolor.green:
		cc_r = 0;
		cc_g = 1;
		cc_b = 0;
		cc_a = 1;
		break;
	case activecolor.blue:
		cc_r = 0;
		cc_g = 0;
		cc_b = 1;
		cc_a = 1;
		break;
	case activecolor.yellow:
		cc_r = 1;
		cc_g = 1;
		cc_b = 0;
		cc_a = 1;
		break;
}

cnt++;
if (cnt > 120) cnt = 0;
draw_text(20, 20, cnt);

surface_set_target(surface_canvas_1);
  shader_set(sdr_tile_colorizer);
  shader_set_uniform_f(uCOLOR, 1, 0, 0, 1);
  shader_set_uniform_f(uFADECOLOR, 0, 1, 0, 1);
  shader_set_uniform_f(uFADEPOS, cnt / 120);
draw_tilemap(tile_layer_tilemap, 0, 0);
shader_reset();
surface_reset_target();

draw_surface_ext(surface_canvas_1, 0 ,0, 1, 1, 0, c_white, 1);