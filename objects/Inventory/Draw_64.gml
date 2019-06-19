if(!show_inventory) 
{
	exit;
}

draw_sprite_part_ext(inv_ui, 0, cellsize, 0, inv_ui_width, inv_ui_height, inv_ui_x, inv_ui_y, scale, scale, c_white, 1);

c = c_black;

draw_text_color(info_x, info_y,ds_player_info[# 0, 0] + ": " + ds_player_info[# 1, 0], c,c,c,c,1);