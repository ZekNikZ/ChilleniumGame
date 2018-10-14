spt_set_color();

if (!circle_spawned && target_color == global.gamecolor && target_color == COLOR.YELLOW) {
	if (instance_exists(obj_unlock_circle)) {
		obj_unlock_circle.visible = true;
		obj_unlock_circle.y -= 128;
		obj_unlock_circle.start_pos -= 128;
		circle_spawned = true;
	}
}