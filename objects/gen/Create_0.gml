/// @description Variables
///Generate the world
b_w = 13; //The blocks are 13 pixels for now :)
width = room_width/b_w; //The room but snapped to 13x13 grid
height = room_height/b_w;
world_block = ds_grid_create(width+1, height+1); //This var will store the type of block and where it is in the world
world_top = ds_grid_create(width+1, 1); //This var will store where the very top of the terrain is at, for simplicity later on
top_height = 200 //Make the starting height for the top of the terrain at the middle of the height of the world
add_height = 0;
add_prev = 0;
chunk=0;
chunk_size=26;

///Generate terrain

//Make all blocks air
for (xx=0;xx<=width;xx++) 
{
	for (yy=0;yy<=height;yy++) 
	{
		ds_grid_add(world_block,xx,yy,0);
	}
}

//                              |
//Where world gen is at for now v
alarm[0]=1;

