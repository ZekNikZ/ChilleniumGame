// Allow player to change to circle
with (obj_player) {
	shp_chevron = 1;
	shape = SHAPE.CHEVRON;
	//sprite_index = spr_player_chev;
	next_sprite_index = spr_player_chev;
	trans_on = true;
}

instance_destroy();