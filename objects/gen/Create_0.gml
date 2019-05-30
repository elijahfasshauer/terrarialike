/// @description Variables
b_w = 13; //The blocks are 13 pixels for now :)
width = room_width/b_w; //The room but snapped to 13x13 grid
height = room_height/b_w;
world_block = ds_grid_create(width+1, height+1); //This var will store the type of block and where it is in the world
world_top = ds_grid_create(width+1, 1); //This var will store where the very top of the terrain is at, for simplicity later on
top_height = 200 //Make the starting height for the top of the terrain at the middle of the height of the world
add_height = 0;
add_prev = 0;
chunk=0;
chunk_size=100;


///Generate terrain

//Make all blocks air
for (xx=0;xx<=width;xx++) 
{
	for (yy=0;yy<=height;yy++) 
	{
		ds_grid_add(world_block,xx,yy,0);
	}
}


//Generate by chunk+biome
for(chunk=0;chunk<=20;chunk++) 
{
	top_height=scr_terrain(chunk,top_height,choose("Forest Mountain","Forest Flat","Forest Mound"));
	
} 


//Do perlin noise adjustments
scr_perlin();


//Add objects into room
for (xx=0;xx<=width;xx++)
{
	for (yy=0;yy<=height;yy++) 
	{
		if ds_grid_get(world_block,xx,yy)=1 
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_parent);
		}
		else if ds_grid_get(world_block,xx,yy)=2
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_2);
		}
		else if ds_grid_get(world_block,xx,yy)=3
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_2);
		}
	}
}

