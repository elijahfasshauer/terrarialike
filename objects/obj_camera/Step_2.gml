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

//View
if view=3 
{
	camera_set_view_angle(view_camera[0],0);
	camera_set_view_size(view_camera[0],256,192);
	camera_set_view_pos(view_camera[0],player.x-256/2,player.y-192/2);
} 
else if view=2 
{
	camera_set_view_size(view_camera[0],512,384);
	camera_set_view_pos(view_camera[0],player.x-256,player.y-192);
} 
else if view=1 
{
	camera_set_view_size(view_camera[0],1024,768);
	camera_set_view_pos(view_camera[0],player.x-512,player.y-384);
}







