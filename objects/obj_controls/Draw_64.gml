/// @description Draw Menu screens.
draw_set_font(fnt_menu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++) 
{
	var offset = 2;
	var txt = menu[i]
	if (menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;		
	}
	else 
	{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i*1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);	
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}

// Show Movement Controls
draw_set_font(fnt_menu)
draw_set_halign(fa_center);
draw_set_valign(fa_center);

xx = (1024/2);
yy = ((768/2)-350);
txt = "WASD - Movement"

draw_set_color(c_black);
draw_text(xx-offset,yy,txt);
draw_text(xx+offset,yy,txt);	
draw_text(xx,yy-offset,txt);
draw_text(xx,yy+offset,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);

xx = (1024/2);
yy = ((768/2)-300);
txt = "Space - Jump"

draw_set_color(c_black);
draw_text(xx-offset,yy,txt);
draw_text(xx+offset,yy,txt);	
draw_text(xx,yy-offset,txt);
draw_text(xx,yy+offset,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);


// "Shape Change:" Header
xx = (1024/2);
yy = ((768/2)-200);
txt = "Shape Changes"

draw_set_color(c_black);
draw_text(xx-offset,yy,txt);
draw_text(xx+offset,yy,txt);	
draw_text(xx,yy-offset,txt);
draw_text(xx,yy+offset,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);

xx = (1024/2)+10;
yy = ((768/2)-150);
txt = "(when unlocked):"

draw_set_color(c_black);
draw_text(xx-offset,yy,txt);
draw_text(xx+offset,yy,txt);	
draw_text(xx,yy-offset,txt);
draw_text(xx,yy+offset,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);

	// Shape Change Controls
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);

	xx = (1024/2)-100;
	yy = ((768/2)-100);
	txt = "1 - Square"

	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);	
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);

	xx = (1024/2)-100;
	yy = ((768/2))-50;
	txt = "2 - Triangle"

	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);	
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);

	xx = (1024/2)-100;
	yy = ((768/2));
	txt = "3 - Circle"

	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);	
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);

	xx = (1024/2)-100;
	yy = ((768/2)+50);
	txt = "4 - Chevron"

	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);	
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
// Show Menu Controls
draw_set_halign(fa_center);
draw_set_valign(fa_center);

xx = (1024/2);
yy = ((768/2)+150);
txt = "R - Restart Level"

draw_set_color(c_black);
draw_text(xx-offset,yy,txt);
draw_text(xx+offset,yy,txt);	
draw_text(xx,yy-offset,txt);
draw_text(xx,yy+offset,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);

xx = (1024/2);
yy = ((768/2)+200);
txt = "Esc - Main Menu"

draw_set_color(c_black);
draw_text(xx-offset,yy,txt);
draw_text(xx+offset,yy,txt);	
draw_text(xx,yy-offset,txt);
draw_text(xx,yy+offset,txt);
draw_set_color(c_white);
draw_text(xx,yy,txt);