/// @description player movement
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);


// Horizontal Movement
var move = key_right - key_left;
move *= hsp;
x += move;

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



