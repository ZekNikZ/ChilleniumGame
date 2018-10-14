switch (global.gamecolor) {
	case COLOR.WHITE:
		global.cc_r = 1;
		global.cc_g = 1;
		global.cc_b = 1;
		global.cc_a = 1;
		break;
	case COLOR.RED:
		global.cc_r = 1;
		global.cc_g = 0;
		global.cc_b = 0;
		global.cc_a = 1;
		break;
	case COLOR.GREEN:
		global.cc_r = 0;
		global.cc_g = 1;
		global.cc_b = 0;
		global.cc_a = 1;
		break;
	case COLOR.BLUE:
		global.cc_r = 0.4;
		global.cc_g = 0.4;
		global.cc_b = 1;
		global.cc_a = 1;
		break;
	case COLOR.YELLOW:
		global.cc_r = 1;
		global.cc_g = 1;
		global.cc_b = 0;
		global.cc_a = 1;
		break;
}

switch (global.targetcolor) {
	case COLOR.WHITE:
		global.tc_r = 1;
		global.tc_g = 1;
		global.tc_b = 1;
		global.tc_a = 1;
		break;
	case COLOR.RED:
		global.tc_r = 1;
		global.tc_g = 0;
		global.tc_b = 0;
		global.tc_a = 1;
		break;
	case COLOR.GREEN:
		global.tc_r = 0;
		global.tc_g = 1;
		global.tc_b = 0;
		global.tc_a = 1;
		break;
	case COLOR.BLUE:
		global.tc_r = 0.4;
		global.tc_g = 0.4;
		global.tc_b = 1;
		global.tc_a = 1;
		break;
	case COLOR.YELLOW:
		global.tc_r = 1;
		global.tc_g = 1;
		global.tc_b = 0;
		global.tc_a = 1;
		break;
}
