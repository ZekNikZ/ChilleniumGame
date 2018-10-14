// Calculate new position
bob_time++;
bob_pos = bob_amplitude * sin(2 * pi / bob_length * bob_time);

// Move to new position
y = bob_start_pos + bob_pos;

shooting_cooldown--;
if (shooting_cooldown < 0) {
	var tc;
	if (spawn_count > 0) {
		var c = floor(random_range(0, 5));
		switch (c) {
			case 0: tc = COLOR.WHITE; break;
			case 1: tc = COLOR.RED; break;
			case 2: tc = COLOR.BLUE; break;
			case 3: tc = COLOR.GREEN; break;
			case 4: tc = COLOR.YELLOW; break;
		}
		if (spawn_cooldown > 0 && tc == target_color) {
			tc = COLOR.WHITE;
		}
		spawn_cooldown--;
		if (tc == target_color) {
			other.spawn_count = 8;
		}
	} else {
		other.spawn_count = 8;
		tc = target_color;
	}
	other.spawn_count--;
	if (tc != target_color || instance_exists(obj_boss_drop) || global.gamecolor == target_color) {
		var inst = instance_create_layer(x, y, "CharacterLayer", obj_boss_bullet);
		with (inst) {
			direction = point_direction(other.x, other.y, obj_player.x, obj_player.y);
			speed = 10;
			target_color = tc;
		}
		audio_sound_pitch(sfx_bossshoot, 1);
	} else {
		var inst = instance_create_layer(x, y, "CharacterLayer", obj_boss_drop);
		with (inst) {
			var dir = point_direction(other.x, other.y, obj_player.x, obj_player.y);
			direction = clamp(dir + (dir < 90 ? 999999 : 0), 210, 330);
			speed = 10;
			image_angle = direction - 90;
			target_color = tc;
		}
		audio_sound_pitch(sfx_bossshoot, 1.4);
	}
	shooting_cooldown = shooting_cooldown_max;
	audio_sound_gain(sfx_bossshoot, 0.5, 0);
	audio_play_sound(sfx_bossshoot, 1, false);
}