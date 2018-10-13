// ############
// # Movement #
// ############
//Check Player Has Control

if (player_control != false)
{
	// Check button presses
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	key_fly = keyboard_check(vk_space);


	// Horizontal movement
	var h_move = key_right - key_left;
	h_move *= hsp;


	// Chevron flight controls
	if (shape == SHAPE.CHEVRON) { // Chevron
		if (key_fly)
		vsp -= 0.2;
		else
		vsp += 0.2;
	} else { // Anything else
		// Apply acceleration due to gravity
		vsp += grav;

		// Jumping
		if (!place_free(x, y + sign(vsp))) {
	
			can_double = true;
			if (key_jump) {
			vsp -= 13;
			in_air = true;
			}
		}

		// Releasing jump and triangle slam
		if (keyboard_check_released(vk_space)) && (in_air) {
			if(shape == SHAPE.TRIANGLE) {
				vsp = 0;
				vsp += (grav * 30);
				in_air = false;
				slamming = true;
				image_yscale = -1;
			}
			else if (shape == SHAPE.CIRCLE) {
				vsp = 0;
				vsp += (grav * 10);
				in_air = false;
				can_double = true;
			}
			else {
				vsp = 0;
				vsp += (grav * 10);
				in_air = false;
			}
		}

		// Circle double jump
		if (shape == SHAPE.CIRCLE) && (can_double) && (key_jump) && (!in_air) {
			vsp = 0;
			vsp -= 13;
			can_double = false;
		}
	}

	// Horizontal Collision Check and Movement
	if (!place_free(x + h_move, y)) {
		while (place_free(x + sign(h_move), y)) {
			x += sign(h_move);
		}
		h_move = 0;
	}

	x += h_move;

	// Vertical Collision Check and Movement
	if (!place_free(x, y + vsp)) {
		while (place_free(x, y + sign(vsp))) {
			y += sign(vsp);
		}
		// Triangle slam screen shake
		if(slamming) {
			spt_screenshake(3, 30);
			slamming = false;
		}
		vsp = 0;
		image_yscale = 1;
	}

	y += vsp;
}


// ###################
// # Changing Shapes #
// ###################

// Square
if (keyboard_check(ord("1"))) {
	shape = SHAPE.SQUARE;
	sprite_index = spr_player_square;
}


// Triangle
if (shp_triangle == 1)
{
	if (keyboard_check(ord("2"))) {
		shape = SHAPE.TRIANGLE;
		sprite_index = spr_player_triangle;
	}
}

// Circle
if (shp_circle == 1)
{
	if (keyboard_check(ord("3"))) {
		shape = SHAPE.CIRCLE;
		sprite_index = spr_player_circle;
	}
}

// Change Shape Chevron
if (shp_chevron == 1)
{
	if (keyboard_check(ord("4"))) {
		shape = SHAPE.CHEVRON;
		sprite_index = spr_player_chev;
	}
}

