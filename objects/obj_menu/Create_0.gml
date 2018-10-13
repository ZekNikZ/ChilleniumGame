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

menu[3] = "New Game";
menu[2] = "Level Select";
menu[1] = "Controls";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 3;