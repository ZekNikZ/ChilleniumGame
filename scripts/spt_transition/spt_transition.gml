/// @description spt_transition(mode, targetroom)
/// @argument Mode sets a transition mode between next, restart, and goto.
/// @argument Target sets target room for using goto mode.

with(obj_transition)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
}
