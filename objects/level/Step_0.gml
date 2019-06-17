/// @description Day and enemy spawn
time+=1;
if time=day_time
{
	day+=1;
	time=0;
}


if time>=day_time/2 && time<=day_time/2+tran
{
	layer_background_blend(back,make_color_rgb(0,0,255-(((time-(day_time/2))/tran)*255)));
}
if time>=0 && time<=tran
{
	layer_background_blend(back,make_color_rgb(0,0,(time/tran)*255));
}

//Enemies on top of world
spawn_enemy-=1
if spawn_enemy=0 
{
	spawn=irandom(50)
	if spawn=1 
	{
		side=choose(1,2)
		if side=1
		{
			xx=camera_get_view_x(view_camera[0])-130;
			instance_create_depth(xx,(gen.world_top[# floor(xx/13),0]*13)-65,0,scr_spawn_enemy());
		}
		else 
		{
			xx=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+130;
			instance_create_depth(xx,(gen.world_top[# floor(xx/13),0]*13)-65,0,scr_spawn_enemy());
		}
	}
	
	spawn_enemy=irandom(100)
}
