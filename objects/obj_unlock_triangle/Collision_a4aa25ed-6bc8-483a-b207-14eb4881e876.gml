event_inherited();

// Allow player to change to triangle
with (obj_player) {
	shp_triangle = 1;
	shape = SHAPE.TRIANGLE;
	//sprite_index = spr_player_triangle;
	next_sprite_index = spr_player_triangle;
	trans_on = true;
}

instance_destroy();