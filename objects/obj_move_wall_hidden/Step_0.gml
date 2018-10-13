if (!init) {
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
	init = true;
}

// Determine if the player is on the platform
var touching = instance_exists(obj_player) && global.gamecolor == target_color;
if (touching) with(obj_player) {
	if (abs(speed) > 0) speed -= sign(speed);
	
	touching = instance_position(x, y + 44, obj_move_wall) == other.id;
}

// Move the platform (and possibly the player)
switch(move_dir) {
	case MOVE_DIR.VERTICAL:
		if (touching) {
			player_offset = obj_player.y - y;
		}
		y = y + dir * spd;
		if (y <= start_pos + bound_low) {
			y = start_pos + bound_low;
			dir *= -1;
		} else if (y >= start_pos + bound_high) {
			y = start_pos + bound_high;
			dir *= -1;
		}
		if (touching) {
			obj_player.y = y + player_offset;
		}
		break;
	case MOVE_DIR.HORIZONTAL:
		if (touching) {
			player_offset = obj_player.x - x;
		}
		x = x + dir * spd;
		if (x <= start_pos + bound_low) {
			x = start_pos + bound_low;
			dir *= -1;
		} else if (x >= start_pos + bound_high) {
			x = start_pos + bound_high;
			dir *= -1;
		}
		if (touching) {
			obj_player.x = x + player_offset;
		}
		break;
}