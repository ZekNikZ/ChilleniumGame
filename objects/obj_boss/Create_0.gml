rot_spd_in_def = 2;
rot_spd_out_def = -3;
rot_spd_in = rot_spd_in_def;
rot_spd_out = rot_spd_out_def;

scl_in_def = 1;
scl_out_def = 1.4;
scl_in = scl_in_def;
scl_out = scl_out_def;

cnt = 0;

// Animation setup
bob_amplitude = 16;
bob_pos = 0;
bob_length = 240;
bob_time = 0;
bob_start_pos = y;

color_spd = 1;

give_player_triangle = false;
give_player_circle = false;

if (global.hit_checkpoint) {
	target_color = global.cp_color;
	global.gamecolor = COLOR.WHITE;
	switch(target_color) {
		case COLOR.BLUE:
			give_player_circle = true;
		case COLOR.YELLOW:
		case COLOR.GREEN:
			give_player_triangle = true;
		case COLOR.RED:
		default:
			break;
	}
} else {
	target_color = COLOR.RED;
}

shooting_cooldown_max = 60;
shooting_cooldown = 120;

circle_spawned = false;

randomize();

spawn_count = 6;
spawn_cooldown = 5;

audio_sound_pitch(sfx_music1, 1.4);
audio_stop_sound(sfx_music1);
audio_play_sound(sfx_music1, 0, true);