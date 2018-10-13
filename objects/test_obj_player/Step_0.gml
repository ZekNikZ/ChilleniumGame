/// @description player movement
// Defining button presses
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);


// Horizontal Movement
var h_move = key_right - key_left;
h_move *= hsp;

// Vertical Movement
vsp += grav;

// Jumping
if (place_meeting(x, y + sign(vsp), obj_wall) && (key_jump)) {
	vsp = -13;
	in_air = true;
}

if (keyboard_check_released(vk_space)) && (in_air) {
	if(shape == shape_change.Triangle) {
		vsp += (grav * 30);
		in_air = false;
		image_yscale = -1;
	}
	else {
	vsp += (grav * 10);
	in_air = false;
	}
}

// Horizontal Collision Check and Movement
if (place_meeting(x + h_move, y, obj_wall)) {
	while (!place_meeting(x + sign(h_move), y, obj_wall)) {
		x += sign(h_move);
	}
	h_move = 0;
}

x += h_move;

// Vertical Collision Check and Movement
if (place_meeting(x, y + vsp, obj_wall)) {
	while (!place_meeting(x, y + sign(vsp), obj_wall)) {
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


// Change Shape Square
if (keyboard_check(ord("2")))
{
	shape = shape_change.Triangle; // Triangle	
	image_index = 1;
}


// Change Shape Square
if (keyboard_check(ord("3")))
{
	shape = shape_change.Circle; // Circle	
	image_index = 2;
}


// Change Shape Square
if (keyboard_check(ord("4")))
{
	shape = shape_change.Chevron; // Chevron	
	image_index = 3;
}


// Change Shape Square
if (keyboard_check(ord("5")))
{
	shape = shape_change.Rectangle; // Rectangle	
	image_index = 4;
}




