if (solid==true) {
	if (other.shape = SHAPE.TRIANGLE && other.image_yscale = -1) {
		spt_screenshake(3, 30);
		instance_destroy();
	} else {
		room_restart();
	}
}	