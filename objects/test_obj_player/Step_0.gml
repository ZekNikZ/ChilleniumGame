/// @description player movement
// Defining button presses
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);


// Horizontal Movement
var h_move = key_right - key_left;
h_move *= hsp;

// Vertical Movement
var v_move = vsp + grav;

// Horizontal Collision
if(place_meeting(x+h_move,y,obj_Wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_Wall))
	{
		x = x + sign(h_move);	
	}
	h_move = 0;

}

x += h_move;

// Vertical Collision
if(place_meeting(x,y+v_move,obj_Wall))
{
	while(!place_meeting(x,y+sign(v_move),obj_Wall))
	{
		y = y + sign(v_move);	
	}
	v_move = 0;

}

y += v_move;

// Jumping


/// @description Shape Change Code

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
	shape = shape_change.Chevron; // Square	

}


// Change Shape Square
if (keyboard_check(ord("5")))
{
	shape = shape_change.Rectangle; // Square	

}



