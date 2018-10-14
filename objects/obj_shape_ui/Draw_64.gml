/// @description Draw GUI
/*draw_set_font(fnt_ui);
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
		draw_set_color(c_black);
		draw_text(50+soffset,70+ offset,"Square");
		draw_text(50-soffset,70+ offset,"Square");
		draw_text(50,70+soffset+ offset,"Square");
		draw_text(50,70-soffset+ offset,"Square");
		draw_set_color(c_white)
		draw_text(50,70,"Square")
		offset += 20;
	}
	if (display_tri == true)
	{
		draw_set_color(c_black);
		draw_text(50+soffset,70+ offset,"Triangle");
		draw_text(50-soffset,70+ offset,"Triangle");
		draw_text(50,70+soffset+ offset,"Triangle");
		draw_text(50,70-soffset+ offset,"Triangle");
		draw_set_color(c_white)
		draw_text(50,70 + offset,"Triangle")
		offset += 20;
	}
	if (display_cir == true)
	{
		draw_set_color(c_black);
		draw_text(50+soffset,70+ offset,"Circle");
		draw_text(50-soffset,70+ offset,"Circle");
		draw_text(50,70+soffset+ offset,"Circle");
		draw_text(50,70-soffset+ offset,"Circle");
		draw_set_color(c_white)
		draw_text(50,70 + offset,"Circle")
		offset += 20;
	}
}*/

var num = (obj_player.shp_square ? 1 : 0) + (obj_player.shp_triangle ? 1 : 0) + (obj_player.shp_circle ? 1 : 0);
var padding = 10;

draw_set_color(c_black);
draw_rectangle(15, 15, 15 + (44 + padding) * num + padding, 15 + 44 + 2 * padding, false);
draw_set_color(c_white);
draw_rectangle(15, 15, 15 + (44 + padding) * num + padding, 15 + 44 + 2 * padding, true);
draw_rectangle(14, 14, 1 + 15 + (44 + padding) * num + padding, 1 + 15 + 44 + 2 * padding, true);

var currOffset = 0;
var cccc;
switch (global.gamecolor) {
	case COLOR.WHITE:
	case COLOR.RED:
		cccc = c_red;
		break;
	case COLOR.GREEN:
		cccc = make_color_rgb(0, 255, 0);
		break;
	case COLOR.BLUE:
		cccc = make_color_rgb(0.4 * 255, 0.4 * 255, 255);
		break;
	case COLOR.YELLOW:
		cccc = c_yellow;
		break;
}
if (obj_player.shp_square) {
	var clr = obj_player.shape == SHAPE.SQUARE ? cccc : c_white;
	draw_sprite_ext(spr_player_square, -1, 15 + (44 + padding) * currOffset + 22 + padding, 15 + padding + 22, 1, 1, 0, clr, 1);
	currOffset++;
}
if (obj_player.shp_triangle) {
	var clr = obj_player.shape == SHAPE.TRIANGLE ? cccc : c_white;
	draw_sprite_ext(spr_player_triangle, -1, 15 + (44 + padding) * currOffset + 22 + padding, 15 + padding + 22, 1, 1, 0, clr, 1);
	currOffset++;
}
if (obj_player.shp_circle) {
	var clr = obj_player.shape == SHAPE.CIRCLE ? cccc : c_white;
	draw_sprite_ext(spr_player_circle, -1, 15 + (44 + padding) * currOffset + 22 + padding, 15 + padding + 22, 1, 1, 0, clr, 1);
	currOffset++;
}
