enum MOVEDIR {
	VERTICAL,
	HORIZONTAL
}

move_dir = MOVEDIR.HORIZONTAL;
start_dir = -1;
bound_low = -300;
bound_high = 300;
spd = 5;

dir = start_dir;

switch(move_dir) {
	case MOVEDIR.HORIZONTAL:
		start_pos = x;
		break;
	case MOVEDIR.VERTICAL:
		start_pos = y;
		break;
}