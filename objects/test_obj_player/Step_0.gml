/// @description player movement
// Defining button presses
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_fly = keyboard_check(vk_space);


// Horizontal Movement
var h_move = key_right - key_left;
h_move *= hsp;


// Chevron Flight
if  (shape == shape_change.Chevron){
	if (key_fly)
	vsp -= 0.2;
	else
	vsp += 0.2;
}


else {

	// Natural Falling
	vsp += grav;

	// Jumping
	if (!place_free(x, y + sign(vsp))) {
	
		can_double = true;
		if (key_jump) {
		vsp -= 13;
		in_air = true;
		}
	}

	// Releasing Jump and Triangle Slam
	if (keyboard_check_released(vk_space)) && (in_air) {
		if(shape == shape_change.Triangle) {
			vsp = 0;
			vsp += (grav * 30);
			in_air = false;
			image_yscale = -1;
		}
		else if (shape == shape_change.Circle) {
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

	//Circle Double Jump
	if (shape == shape_change.Circle) && (can_double) && (key_jump) && (!in_air) {
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
	vsp = 0;
	image_yscale = 1;
}

y += vsp;





// Changing Shapes

// Change Shape Square
if (keyboard_check(ord("1")))
{
	shape = shape_change.Square; // Square	
	image_index = 0;
}


// Change Shape Triangle
//if (shp_triangle == 1)
{
	if (keyboard_check(ord("2")))
	{
		shape = shape_change.Triangle; // Triangle	
		image_index = 1;
	}
}

// Change Shape Circle
//if (shp_circle == 1)
{
	if (keyboard_check(ord("3")))
	{
		shape = shape_change.Circle; // Circle	
		image_index = 2;
	}
}

// Change Shape Chevron
//if (shp_chevron == 1)
{
	if (keyboard_check(ord("4")))
	{
		shape = shape_change.Chevron; // Chevron	
		image_index = 3;
	}
}

