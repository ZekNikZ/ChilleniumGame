// Check for being stuck in wall

var inst = instance_position(x + 21, y, obj_wall_prt);
if (inst) {
	while (instance_position(x + 21, y, obj_wall_prt)) {
		x -= 1;
	}
}

var inst = instance_position(x - 21, y, obj_wall_prt);
if (inst) {
	while (instance_position(x - 21, y, obj_wall_prt)) {
		x += 1;
	}
}

var inst = instance_position(x, y + 21, obj_wall_prt);
if (inst) {
	while (instance_position(x, y + 21, obj_wall_prt)) {
		y -= 1;
	}
}

var inst = instance_position(x, y - 21, obj_wall_prt);
if (inst) {
	while (instance_position(x, y - 21, obj_wall_prt)) {
		y += 1;
	}
}