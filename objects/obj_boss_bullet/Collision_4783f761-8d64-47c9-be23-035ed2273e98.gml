if (!((other.shape == SHAPE.TRIANGLE && other.image_yscale == -1)) && !other.dead) {
	other.trans_state = 3;
	other.trans_on = true;
	other.dead = true;
}

instance_destroy();