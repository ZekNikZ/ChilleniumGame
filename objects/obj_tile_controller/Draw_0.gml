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