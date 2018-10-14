if (image_xscale==1)
{
	if (other.shape = SHAPE.TRIANGLE && other.image_yscale = -1)
	{
		spt_screenshake(10, 30);
		instance_destroy();
	}
	else
	{
		//room_restart();
		other.trans_state = 3;
		other.trans_on = true;
	}
}	