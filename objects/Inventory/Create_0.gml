depth = -1;
inv_ui = spr_inv_ui; //makes the sprite a var
scale = 1;

show_inventory = false;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
cellsize = 32;
inv_ui_width = 288;
inv_ui_height = 192;

inv_ui_x = (gui_width *.5) - (inv_ui_width *.5 *scale);
inv_ui_y = (gui_height *.5) - (inv_ui_height *.5 *scale);
