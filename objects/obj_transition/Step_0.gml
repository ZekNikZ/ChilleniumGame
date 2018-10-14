/// @description Transition Processing
// Progress the Transition

if (mode != TRANSITION_STATE.OFF)
{
	if (mode == TRANSITION_STATE.INTRO)
	{
		percent = max(0, percent - max(percent / 10, 0.005));
	}
	else
	{
		percent = min(1.2, percent + max((1 - percent) / 10, 0.005));
	}
	if (percent == 1.2) || (percent == 0)
	{
		switch(mode)
		{
			case TRANSITION_STATE.INTRO: 
			{
				mode = TRANSITION_STATE.OFF;
				break;
			}
			case TRANSITION_STATE.NEXT: 
			{
				mode = TRANSITION_STATE.INTRO;
				room_goto_next();
				break;
			}
			case TRANSITION_STATE.GOTO: 
			{
				mode = TRANSITION_STATE.INTRO;
				room_goto(target);
				break;
			}
			case TRANSITION_STATE.RESTART: 
			{
				room_restart();
				break;
			}
		}
	}
}	

