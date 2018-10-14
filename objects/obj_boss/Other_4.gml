if (give_player_circle) {
	obj_player.shp_circle = 1;
	instance_destroy(obj_unlock_circle);
}
if (give_player_triangle) {
	obj_player.shp_triangle = 1;
	instance_destroy(obj_unlock_triangle);
}