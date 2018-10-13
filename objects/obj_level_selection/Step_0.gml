/// @description Control menu and manage menu animation.
//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

// Keyboard Controls 
if (menu_control)
{
	// Up/Down Control
	if (keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
		
	}
	if (keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
		
	}
	
	// Left/Rigth Control
	if (keyboard_check_pressed(vk_left)) || (keyboard_check_pressed(ord("A")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
		
	}
	if (keyboard_check_pressed(vk_right)) || (keyboard_check_pressed(ord("D")))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
		
	}	
	
	// Select Options
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
	{
		//menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		menu_control = false;
	}

}

// Transition activations.
if (menu_committed != -1) // && (menu_x > gui_width+150)
{
	switch (menu_committed)
	{
		case 6: 
			spt_transition(TRANSITION_STATE.GOTO,rm_level_0); break;
		case 5: 
		{
			if(obj_room_unlock_contoller.room_unlock >= 1)
			{
				menu_x_target = gui_width+200;
				spt_transition(TRANSITION_STATE.GOTO,rm_level_01); 
			}
			else spt_screenshake(10,10); menu_committed = -1; menu_control = true;
			break;
		}
		case 4: 
		{
			if(obj_room_unlock_contoller.room_unlock >= 2)
			{
				menu_x_target = gui_width+200;
				//spt_transition(TRANSITION_STATE.GOTO,rm_level_02); 
			}
			else spt_screenshake(10,10); menu_committed = -1; menu_control = true;
			break;
		}
		case 3: 
		{
			if(obj_room_unlock_contoller.room_unlock >=3)
			{
				spt_transition(TRANSITION_STATE.GOTO,rm_level_03); 
			}
			else spt_screenshake(1,1); menu_committed = -1; menu_control = true;
			break;
		}
		case 2: 
		{	
			if(obj_room_unlock_contoller.room_unlock >= 4)
			{
				menu_x_target = gui_width+200;
				//spt_transition(TRANSITION_STATE.GOTO,rm_level_04); 
			}
			else spt_screenshake(10,10); menu_committed = -1; menu_control = true;
			break;
		}
		case 1: 
		{	
			if(obj_room_unlock_contoller.room_unlock >= 5)
			{
				menu_x_target = gui_width+200;
				//spt_transition(TRANSITION_STATE.GOTO,rm_level_05); 
			}
			else spt_screenshake(10,10); menu_committed = -1; menu_control = true;
			break;
		}
		case 0: default: 
		{
			//menu_x_target = gui_width+200;
			menu_control = false;
			spt_transition(TRANSITION_STATE.GOTO,rm_main_menu); break;
		}
	}
}
