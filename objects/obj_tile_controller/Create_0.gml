surface_canvas_1 = surface_create(room_width, room_height);;

uCOLOR = shader_get_uniform(sdr_tile_colorizer, "f_Color");
uFADECOLOR = shader_get_uniform(sdr_tile_colorizer, "f_FadeColor");
uFADEPOS = shader_get_uniform(sdr_tile_colorizer, "f_FadePos");

tile_layer = layer_get_id("WallTileLayer");

tile_layer_tilemap = layer_tilemap_get_id(tile_layer);

cnt = 0;