if (other.shape = SHAPE.TRIANGLE && other.image_yscale = -1)
{
	spt_screenshake(3, 30);
	instance_destroy();
}
else
{
	if (timer>30)
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
}