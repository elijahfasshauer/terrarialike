/// @description Insert description here
// You can write your code in this editor

for(worlds=0;worlds<=global.world_count;worlds++)
{
	ini_open()
	draw_set_halign(fa_center)
	draw_text(display_get_gui_width()/2,(display_get_gui_height()/8)+display_get_gui_height()/8*worlds
	,string())
	draw_set_halign(fa_left)
}