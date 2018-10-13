
if (timer>60)
{
	if (global.gamecolor==COLOR.WHITE)
	{
		room_restart();
	}
	else
	{
		global.gamecolor=COLOR.WHITE;
	}
	timer=0;
}