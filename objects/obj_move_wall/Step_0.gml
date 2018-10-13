// Determine if the player is on the platform
var touching = instance_exists(obj_player);
if (touching) with(obj_player) {
	if (abs(speed) > 0) speed -= sign(speed);
	
	touching = instance_position(x, y + 44, obj_move_wall) == other.id;
	/*
	touching = instance_place(x, y + 1, obj_move_wall) == other.id;
	if (place_meeting(x, y, obj_move_wall)) {
		switch(other.move_dir) {
			case MOVE_DIR.VERTICAL:
				direction = 180 + 90 * other.dir;
				speed = 25;
				obj_player.y += other.dir * other.spd;
				break;
			case MOVE_DIR.HORIZONTAL:
				direction = 90 - 90 * other.dir;
				speed = 25;
				obj_player.x += other.dir * other.spd;
				break;
		}
	}
	*/
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