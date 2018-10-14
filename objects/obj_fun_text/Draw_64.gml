/// @description Draw fun text.
draw_set_font(fnt_tips);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

var xx = (obj_camera.x-948);
var yy = (obj_camera.y-300);
var txt = "WASD to move.";

draw_set_color(c_black);
draw_text(xx/*-offset*/,yy,txt);
draw_text(xx/*+offset*/,yy,txt);	
draw_text(xx,yy/*-offset*/,txt);
draw_text(xx,yy/*+offset*/,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);