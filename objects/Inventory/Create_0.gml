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


info_x = inv_ui_x + (9*scale);
info_y = inv_ui_y + (9*scale);

//-----player info-------\\

ds_player_info = ds_grid_create(2,2);
ds_player_info[# 0, 0] = "Name";
ds_player_info[# 0, 1] = "level";

ds_player_info[# 1, 0] = "player";
ds_player_info[# 1, 1] = "1"; //this will be where the player level will go, i dont know if we have a var set up for it yet though

