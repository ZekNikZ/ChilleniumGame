// Allow player to change to triangle
with (obj_player) {
	shp_triangle = 1;
	shape = SHAPE.CIRCLE;
	sprite_index = spr_player_triangle;
}

instance_destroy();