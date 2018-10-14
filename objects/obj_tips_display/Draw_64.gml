/// @description Draw tips.
draw_set_font(fnt_tips);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

var offset = 2;
var xx = (x-948);
var yy = (y-300);
var txt = "You can do it.";

draw_set_color(c_black);
draw_text(xx-offset,yy,txt);
draw_text(xx+offset,yy,txt);	
draw_text(xx,yy-offset,txt);
draw_text(xx,yy+offset,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);