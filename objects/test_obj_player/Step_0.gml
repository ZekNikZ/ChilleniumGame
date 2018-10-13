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

x += moveX;
y += moveY;