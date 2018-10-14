xx = obj_player.x;
yy = obj_player.y - 50;
txt = "WASD to move.";

/// @description Draw tips.
draw_set_font(fnt_tips);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

var offset = 2;

draw_set_color(c_black);
draw_text(xx-offset,yy,txt);
draw_text(xx+offset,yy,txt);	
draw_text(xx,yy-offset,txt);
draw_text(xx,yy+offset,txt);
draw_set_color(make_color_rgb(global.cc_r,global.cc_g,global.cc_b));
draw_text(xx,yy,txt);
