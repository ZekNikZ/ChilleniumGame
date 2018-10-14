// Calculate new position
bob_time++;
bob_pos = bob_amplitude * sin(2 * pi / bob_length * bob_time);

// Move to new position
y = bob_start_pos + bob_pos;

shooting_cooldown--;
if (shooting_cooldown < 0) {
	var inst = instance_create_layer(x, y, "CharacterLayer", obj_boss_bullet);
	with (inst) {
		halo = false;
		direction = point_direction(other.x, other.y, obj_player.x, obj_player.y);
		speed = 10;
		if (other.spawn_count > 0) {
			var c = floor(random_range(0, 5));
			switch (c) {
				case 0: target_color = COLOR.WHITE; break;
				case 1: target_color = COLOR.RED; break;
				case 2: target_color = COLOR.BLUE; break;
				case 3: target_color = COLOR.GREEN; break;
				case 4: target_color = COLOR.YELLOW; break;
			}
			if (target_color == other.target_color) {
				halo = true;
				other.spawn_count = 8;
			}
			other.spawn_count--;
		} else {
			halo = true;
			target_color = other.target_color;
			other.spawn_count = 8;
		}
	}
	shooting_cooldown = shooting_cooldown_max;
}