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

control[1] = "Return to Menu";
control[0] = "Quit";

menu_items = array_length_1d(control);
menu_cursor = 2;