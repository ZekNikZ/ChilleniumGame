// Check for being stuck in wall

if (!place_free(x, y + 1)) {
	while (!place_free(x, y + 1)) {
		y -= 1;
	}
}

if (!place_free(x, y - 1)) {
	while (!place_free(x, y - 1)) {
		y += 1;
	}
}

if (!place_free(x + 1, y)) {
	while (!place_free(x + 1, y)) {
		x -= 1;
	}
}

if (!place_free(x - 1, y)) {
	while (!place_free(x - 1, y)) {
		x += 1;
	}
}