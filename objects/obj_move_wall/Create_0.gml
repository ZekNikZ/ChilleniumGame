// TODO: move to creation code
move_dir = MOVE_DIR.HORIZONTAL;
start_dir = -1;
bound_low = -300;
bound_high = 300;
spd = 5;

// Set initial direction and position
dir = start_dir;
switch(move_dir) {
	case MOVE_DIR.HORIZONTAL:
		start_pos = x;
		break;
	case MOVE_DIR.VERTICAL:
		start_pos = y;
		break;
}