/// @description Insert description here
// You can write your code in this editor

if global.world_count>0 {
	for(worlds=1;worlds<=global.world_count;worlds++)
	{
		ini_open("world_"+worlds+".ini")
		draw_set_halign(fa_center)
		draw_text(display_get_gui_width()/2,(display_get_gui_height()/8)+display_get_gui_height()/8*worlds
		,"world "+string(worlds))
		draw_set_halign(fa_left)
		ini_close()
	}
}