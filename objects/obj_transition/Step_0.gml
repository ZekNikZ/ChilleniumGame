/// @description Transition Processing
// Progress the Transition

if (mode != transition.off)
{
	if (mode == transition.intro)
	{
		percent = max(0,percent-max((percent/10),0.005));
	}
	else
	{
		percent = min(1,percent+max(((1-percent)/10),0.005));
	}
	if (percent == 1) || (percent == 0)
	{
		switch(mode)
		{
			case transition.intro: 
			{
				mode = transition.off;
				break;
			}
			case transition.next: 
			{
				mode = transition.intro;
				room_goto_next();
				break;
			}
			case transition.goto: 
			{
				mode = transition.intro;
				room_goto(target);
				break;
			}
			case transition.restart: 
			{
				room_restart();
				break;
			}
		}
	}
}	
