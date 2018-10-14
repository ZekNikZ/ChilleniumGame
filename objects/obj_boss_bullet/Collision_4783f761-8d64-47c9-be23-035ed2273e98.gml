if (!(other.shape == SHAPE.TRIANGLE && other.image_yscale == -1)) {
	other.trans_state = 3;
	other.trans_on = true;
}

instance_destroy();