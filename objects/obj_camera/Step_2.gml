/// @description Insert description here
// You can write your code in this editor

if view=1 {
	dist=20
} else if view=2 {
	dist=10
} else if view=3 {
	dist=5
}

move_towards_point(player.x,player.y,distance_to_point(player.x,player.y)/dist)


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


if view=3 {
	camera_set_view_angle(view_camera[0],0);
	camera_set_view_size(view_camera[0],256,192);
} else if view=2 {
	camera_set_view_size(view_camera[0],512,384);
} else if view=1 {
	camera_set_view_size(view_camera[0],1024,768);
}