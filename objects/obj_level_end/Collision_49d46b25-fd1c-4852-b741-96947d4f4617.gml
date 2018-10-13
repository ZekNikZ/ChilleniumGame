/// @description End level and transition out.

with (obj_player)
{
	if (player_control)
	{
		player_control = false;
		spt_transition(TRANSITION_STATE.NEXT);
	}
}
