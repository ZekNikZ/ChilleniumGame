switch (target_color) {
	case activecolor.white:
		cc_r = 1;
		cc_g = 1;
		cc_b = 1;
		cc_a = 1;
		break;
	case activecolor.red:
		cc_r = 1;
		cc_g = 0;
		cc_b = 0;
		cc_a = 1;
		break;
	case activecolor.green:
		cc_r = 0;
		cc_g = 1;
		cc_b = 0;
		cc_a = 1;
		break;
	case activecolor.blue:
		cc_r = 0;
		cc_g = 0;
		cc_b = 1;
		cc_a = 1;
		break;
	case activecolor.yellow:
		cc_r = 1;
		cc_g = 1;
		cc_b = 0;
		cc_a = 1;
		break;
}
