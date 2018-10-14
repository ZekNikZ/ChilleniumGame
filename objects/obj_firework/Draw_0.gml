/// @description Insert description here
// You can write your code in this editor
cnt++;

var c_inner_color = make_color_hsv((cnt * color_spd) % 256, 128, 255);	

draw_sprite_ext(spr_firework, -1, x, y, 2, 2, 0, c_inner_color, 1);