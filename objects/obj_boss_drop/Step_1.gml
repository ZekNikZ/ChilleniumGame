var dx = lengthdir_x(speed, direction);
var dy = lengthdir_y(speed, direction);

if (!place_free(x + dx, y + dy)) {
	speed = 0;
	direction = 0;
	image_angle = 0;
}