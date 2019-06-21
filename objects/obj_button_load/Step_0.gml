/// @description Insert description here
// You can write your code in this editor

scale=display_get_gui_width()/1240/2;
image_xscale=scale;
image_yscale=scale;

x=display_get_gui_width()/2;
y=(display_get_gui_height()/5)*3;


if collision_point(mouse_x,mouse_y,obj_button_load,true,false)
{
	image_index=1;
} 
else 
{
	image_index=0;
}