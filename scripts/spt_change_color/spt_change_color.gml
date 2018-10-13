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
		global.cc_r = 0;
		global.cc_g = 0;
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
