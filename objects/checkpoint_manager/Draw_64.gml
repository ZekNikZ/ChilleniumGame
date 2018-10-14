if (global.checkpoint_text_active) {
	global.checkpoint_cntr++;
	if (global.checkpoint_cntr > global.checkpoint_cntr_max) {
		global.checkpoint_text_active = false;
	}
	draw_set_halign(fa_left);
	draw_set_font(fnt_ui);
	draw_text(25, window_get_height() - 25, "Checkpoint Reached");
}