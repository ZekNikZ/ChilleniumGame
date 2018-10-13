/// @description Draw Transition
// Draw White Panning Bars
if (mode != transition.off)
{
	switch (gamecolor)
	{
		case activecolor.white: default:
		{
			draw_set_color(c_white);
			break;
		}
		case activecolor.red:
		{
			draw_set_color(c_red);
			break;
		}
		case activecolor.blue:
		{
			draw_set_color(c_blue);
			break;
		}
		case activecolor.yellow:
		{
			draw_set_color(c_yellow);
			break;
		}	
		case activecolor.green:
		{
			draw_set_color(c_green);
			break;
		}
	}
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h-(percent*h_half),false);
}