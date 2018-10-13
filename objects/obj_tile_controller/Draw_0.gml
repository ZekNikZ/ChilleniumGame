spt_change_color();

//cnt++;
if (cnt > 120) cnt = 0;
//draw_text(20, 20, cnt);

surface_set_target(surface_canvas_1);
  shader_set(sdr_colorizer);
  shader_set_uniform_f(uCOLOR, global.cc_r, global.cc_g, global.cc_b, global.cc_a);
  shader_set_uniform_f(uFADECOLOR, global.tc_r, global.tc_g, global.tc_b, global.tc_a);
  shader_set_uniform_f(uFADEPOS, cnt / 120);
draw_tilemap(tile_layer_tilemap, 0, 0);
shader_reset();
surface_reset_target();

draw_surface_ext(surface_canvas_1, 0 ,0, 1, 1, 0, c_white, 1);