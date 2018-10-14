// If Checkpoint was reached
if (global.hit_checkpoint) {
	x = global.spawnx;
	y = global.spawny;
	global.gamecolor = global.cp_color;
	if (instance_exists(obj_boss)) {
		obj_boss.target_color = COLOR.YELLOW;
	}
}

// Movement setup
hsp = 10;
vsp = 0;
grav = 0.5;

in_air = false;
can_double = false
slamming = false;

// Shape setup
shape = SHAPE.SQUARE;

shp_square = 1;
shp_triangle = 0;
shp_circle = 0;
shp_chevron = 0;

// Sprite setup
image_speed = 0;

// Player Control
player_control = true;

air_time = 0;

trans_cnt = 0;
trans_cnt_max = 5;
trans_state = 0;
trans_on = false;
scl = 1;