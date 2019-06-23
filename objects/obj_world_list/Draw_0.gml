/// @description Draw list of worlds

//If a world already exists
if global.world_count>0 {
	for(worlds=1;worlds<=global.world_count;worlds++)
	{
		
		draw_set_halign(fa_center)
		
		
		if mouse_y>=display_get_gui_height()/8+display_get_gui_height()/8*worlds && 
		mouse_y<display_get_gui_height()/8+display_get_gui_height()/8*(worlds+1)
		{
			draw_set_color(c_gray)
			draw_text(display_get_gui_width()/2,display_get_gui_height()/8*worlds
			-(scroll*(display_get_gui_height()/8)),"world "+string(worlds))
			if mouse_check_button_pressed(mb_left)
			{
				global.world_loaded=worlds;
				scr_load_world_menu();
				room_goto(world);
				
			}
			draw_set_color(c_white)
		} 
		else 
		{
			draw_set_color(c_white)
			draw_text(display_get_gui_width()/2,display_get_gui_height()/8*worlds
			-(scroll*(display_get_gui_height()/8)),"world "+string(worlds))
		}
		
		draw_set_halign(fa_left)
		
	}
} 
else //If not
{
	draw_set_halign(fa_center)
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"See your created worlds here!")
	draw_set_halign(fa_left)
}
