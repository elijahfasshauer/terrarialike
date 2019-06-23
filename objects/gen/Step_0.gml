//Make screen size right
w=surface_get_width(application_surface);
h=surface_get_height(application_surface);
camera_set_view_size(view_camera[0],w,h);
surface_resize(application_surface, display_get_gui_width(), display_get_gui_height());
view_set_wport(view_camera[0],display_get_gui_width());
view_set_hport(view_camera[0],display_get_gui_height());


///////////////////////////////////////////////////////////////////////////////
///Generate terrain

//Generate top terrain by chunk + biome

if chunk<=20 
{
	top_height=scr_terrain_top(chunk,top_height,choose("Forest Mountain","Forest Flat","Forest Mound"));
}
else if chunk=21
{
	//Do perlin noise adjustments (Must be done before underground and trees are gen'd)
	scr_perlin();
}
else if chunk=22
{
	//Add trees
	scr_trees();
}
else if chunk=23
{
	//Generate underground layers
	scr_underground_gen();
}
else if chunk=24
{
	global.world_block=world_block;

	global.world_top=world_top;

	global.width=width;

	global.height=height;

	global.chunk_biome=chunk_biome;

	//Saving the world
	scr_save_world_menu();
}
else if chunk=25
{
	display="done!"
	alarm[2]=120
}

//Go through to the next part of generating world
chunk+=1