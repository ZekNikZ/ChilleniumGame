if (global.gamecolor == target_color) {
	spt_set_color();
	
	solid = true;
	image_xscale = 1;
	image_yscale = 1;
} else {
	solid = false;
	image_xscale = 0;
	image_yscale = 0;
}