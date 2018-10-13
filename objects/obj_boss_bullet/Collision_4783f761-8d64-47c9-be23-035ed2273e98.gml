if (!(other.shape == SHAPE.TRIANGLE && other.image_yscale == -1)) {
	if (obj_boss.target_color == target_color) {
		global.gamecolor = target_color;
	} else {
		room_restart();
	}
}

instance_destroy();