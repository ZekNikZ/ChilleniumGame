event_inherited();

// Allow player to change to circle
with (obj_player) {
	shp_circle = 1;
	shape = SHAPE.CIRCLE;
	//sprite_index = spr_player_circle;
	next_sprite_index = spr_player_circle;
	trans_on = true;
}


instance_destroy();