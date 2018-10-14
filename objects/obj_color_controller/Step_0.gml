if (global.clr_do_transitions && global.clr_transitioning) {
	global.clr_trans_amt++;
	if (global.clr_trans_amt >= global.clr_trans_max) {
		global.clr_transitioning = false;
		global.clr_trans_amt = 0;
		global.gamecolor = global.targetcolor;
		spt_change_color();
	}
}