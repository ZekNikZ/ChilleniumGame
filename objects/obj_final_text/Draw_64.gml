draw_set_font(fnt_title)
draw_set_halign(fa_center);
draw_set_valign(fa_center);

xx = (1024/2);
yy = ((768/2)-100);
txt = "You Won!";

draw_set_color(c_white);
draw_text(xx,yy,txt);

draw_set_font(fnt_final)
draw_set_halign(fa_center);
draw_set_valign(fa_center);


xx = (1024/2);
yy = ((768)-100);
txt = "Push Escape to go back to the menu";

draw_set_color(c_white);
draw_text(xx,yy,txt);