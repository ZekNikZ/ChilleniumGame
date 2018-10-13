var moveX = 0, moveY = 0;

if (keyboard_check(ord("W"))) {
	moveY -= spd;
}
if (keyboard_check(ord("S"))) {
	moveY += spd;
}
if (keyboard_check(ord("A"))) {
	moveX -= spd;
}
if (keyboard_check(ord("D"))) {
	moveX += spd;
}

if (place_meeting(x + moveX, y, obj_wall)) {
	while (!place_meeting(x + sign(moveX), y, obj_wall)) {
		x += sign(moveX);
	}
	moveX = 0;
}
if (place_meeting(x, y + moveY, obj_wall)) {
	while (!place_meeting(x, y + sign(moveY), obj_wall)) {
		y += sign(moveY);
	}
	moveY = 0;
}

x += moveX;
y += moveY;
