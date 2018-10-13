/// @description Menu setup of GUI and Variabels.

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 64;

menu_x = gui_width + 500;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;
menu_font = fnt_menu;
menu_itemheight = font_get_size(fnt_menu);
menu_committed = -1;
menu_control = true;

menu[5] = "Level 1"
menu[4] = "Level 2"
menu[3] = "Level 3"
menu[2] = "Level 4"
menu[1] = "Level 5"
menu[0] = "Back";

menu_items = array_length_1d(menu);
menu_cursor = 2;