if(image_xscale==1) {
	if (!place_free(x + hsp, y)) {
		while (place_free(x + sign(hsp), y)) {
			x += sign(hsp);
		}
		if (hsp>0) {
			hsp= -5;
		} else {
			hsp = 5;
		}
	}
	if (hsp > 0) {
		if (place_free(x + 64, y + 30)) {
			hsp = -5;
		}
	} else {
		if (place_free(x - 64, y + 30)) {
			hsp = 5;
		}
	}
	
	x += hsp;

	
	if (!place_free(x, y + vsp + 5)) {
		while (place_free(x , y+vsp+5)) {
			y+=vsp;
		}
		vsp = 0;
	} else {
		vsp = 12;
	}
	y += vsp;
}