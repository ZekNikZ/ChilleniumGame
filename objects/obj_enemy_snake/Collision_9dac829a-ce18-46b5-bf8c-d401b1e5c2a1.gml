
if (timer>60)
{
	if (global.gamecolor==activecolor.white)
	{
		room_restart();
	}
	else
	{
		global.gamecolor=activecolor.white;
	}
	timer=0;
}