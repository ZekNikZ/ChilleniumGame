switch (global.gamecolor) {
	case activecolor.white:
		global.cc_r = 1;
		global.cc_g = 1;
		global.cc_b = 1;
		global.cc_a = 1;
		break;
	case activecolor.red:
		global.cc_r = 1;
		global.cc_g = 0;
		global.cc_b = 0;
		global.cc_a = 1;
		break;
	case activecolor.green:
		global.cc_r = 0;
		global.cc_g = 1;
		global.cc_b = 0;
		global.cc_a = 1;
		break;
	case activecolor.blue:
		global.cc_r = 0;
		global.cc_g = 0;
		global.cc_b = 1;
		global.cc_a = 1;
		break;
	case activecolor.yellow:
		global.cc_r = 1;
		global.cc_g = 1;
		global.cc_b = 0;
		global.cc_a = 1;
		break;
}
