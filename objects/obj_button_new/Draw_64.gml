/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,0,display_get_gui_width()/2,(display_get_gui_height()/3)*2,
display_get_gui_width()/1240/2,display_get_gui_width()/1240/2,0,-1,1)
if mouse_x>=display_get_gui_width()/2-64 && mouse_x<=display_get_gui_width()/2+64
{
	if mouse_y>=(display_get_gui_height()/3)*2-32 && mouse_y<=(display_get_gui_height()/3)*2+32
	{
		image_blend=c_white
		if mouse_check_button_released(mb_left)
		{
			room_goto(make_world)
		}
	}
}