if (global.checkpoint_text_active) {
	global.checkpoint_cntr++;
	if (global.checkpoint_cntr > global.checkpoint_cntr_max) {
		global.checkpoint_text_active = false;
	}
	draw_text(50-room_width, 50-room_height, "Checkpoint Reached");
}