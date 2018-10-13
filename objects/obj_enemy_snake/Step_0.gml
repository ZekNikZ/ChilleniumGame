timer++;
x+=hsp;

if (!place_free(x + hsp, y)) {
	while (place_free(x + sign(hsp), y)) {
		x += sign(hsp);
	}
	hsp= -5;
}