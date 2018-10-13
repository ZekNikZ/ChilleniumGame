/// @description player movement
// Defining button presses
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);


// Horizontal Movement
var h_move = key_right - key_left;
h_move *= hsp;

// Vertical Movement
vsp += grav;

// Jumping
if (place_meeting(x, y + sign(vsp), obj_wall) && (key_jump)) {
	vsp = -13;
}

if (keyboard_check_released(vk_space)) {
	vsp += (grav * 1.5);
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
}

y += vsp;





