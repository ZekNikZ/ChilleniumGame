/// @description Draw GUI
draw_set_font(fnt_ui);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for (var i = 0; i < 3; i++)
{
	var soffset = 2;
	var offset = 0;
	if (display_shapes == true)
	{
		draw_set_color(c_black);
		draw_text(30+soffset,50,"Available Shapes:");
		draw_text(30-soffset,50,"Available Shapes:");
		draw_text(30,50+soffset,"Available Shapes:");
		draw_text(30,50-soffset,"Available Shapes:");
		draw_set_color(c_white);
		draw_text(30,50,"Available Shapes:")
	}
	if (display_squ == true)
	{
		draw_set_color(c_white)
		draw_text(50,70,"Square")
		offset += 20;
	}
	if (display_tri == true)
	{
		draw_set_color(c_white)
		draw_text(50,70 + offset,"Triangle")
		offset += 20;
	}
	if (display_cir == true)
	{
		draw_set_color(c_white)
		draw_text(50,70 + offset,"Circle")
		offset += 20;
	}
}