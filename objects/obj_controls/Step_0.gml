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
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		menu_control = false;
	}

}

// Transition activations.
if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		default: case 0: game_end(); break;
	}
}
