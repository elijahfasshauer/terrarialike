/// @description Zooming and views

//Zoom in and out
if mouse_wheel_up() 
{
	if view=1 
	{
		view=2;
	}
	else if view=2 
	{
		view=3;
	}
}
if mouse_wheel_down() 
{
	if view=2 
	{
		view=1;
	}
	else if view=3 
	{
		view=2;
	}
}

w=surface_get_width(application_surface)
h=surface_get_height(application_surface)

//View
if view=3 
{
	camera_set_view_angle(view_camera[0],0);
	camera_set_view_size(view_camera[0],display_get_gui_width()/4,display_get_gui_height()/4);
	camera_set_view_pos(view_camera[0],player.x-display_get_gui_width()/8,player.y-display_get_gui_height()/8);
} 
else if view=2 
{
	camera_set_view_size(view_camera[0],display_get_gui_width()/2,display_get_gui_height()/2);
	camera_set_view_pos(view_camera[0],player.x-display_get_gui_width()/4,player.y-display_get_gui_height()/4);
} 
else if view=1 
{
	camera_set_view_size(view_camera[0],w,h);
	camera_set_view_pos(view_camera[0],player.x-w/2,player.y-h/2);
}

//Make screen size right
surface_resize(application_surface, display_get_gui_width(), display_get_gui_height())
view_set_wport(view_camera[0],display_get_gui_width())
view_set_hport(view_camera[0],display_get_gui_height())


