with (other) {
	global.spawnx = x;
	global.spawny = y;
	global.cp_color = global.gamecolor;
	if (instance_exists(obj_boss)) {
		obj_boss.target_color = COLOR.YELLOW;
	}
}

global.hit_checkpoint = true;