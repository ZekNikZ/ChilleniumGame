// Determine the RGBA values of the target color
spt_set_color();
	
// Only display if the target color matches the stage color
if (global.gamecolor != target_color) {
	
	// Make the wall solid and visible
	solid = true;
	image_xscale = 1;
	image_yscale = 1;
} else {
	// Make the wall passthrough and invisible
	solid = false;
	image_xscale = 0;
	image_yscale = 0;
}