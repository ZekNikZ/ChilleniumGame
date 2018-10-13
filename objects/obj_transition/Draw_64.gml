/// @description Draw Transition
// Draw White Panning Bars
if (mode != TRANSITION_STATE.OFF)
{
	switch (global.gamecolor)
	{
		case COLOR.WHITE: default:
		{
			draw_set_color(c_white);
			break;
		}
		case COLOR.RED:
		{
			draw_set_color(c_red);
			break;
		}
		case COLOR.BLUE:
		{
			draw_set_color(c_blue);
			break;
		}
		case COLOR.YELLOW:
		{
			draw_set_color(c_yellow);
			break;
		}	
		case COLOR.GREEN:
		{
			draw_set_color(c_green);
			break;
		}
	}
	draw_rectangle(0, 0, w, percent * h_half, false);
	draw_rectangle(0, h, w, h - (percent * h_half), false);
}