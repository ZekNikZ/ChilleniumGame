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

lvl[6] = "Level 1"
lvl[5] = "Level 2"
lvl[4] = "Level 3"
lvl[3] = "Level 4"
lvl[2] = "Level 5"
lvl[1] = "Level 6"
lvl[0] = "Return to Menu";

menu_items = array_length_1d(lvl);
menu_cursor = 5;