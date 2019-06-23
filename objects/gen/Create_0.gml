/// @description Insert description here
// You can write your code in this editor
alarm[0]=10

display="Generating World ;)"

/// @description Variables
b_w=global.b_w;
width = 10240/b_w; //The room width but snapped to 13x13 grid
height = 10000/b_w;//The room height but snapped to 13x13 grid

//World gen variables
world_block = ds_grid_create(width+1, height+1); //This var will store the type of block and where it is in the world
world_top = ds_grid_create(width+1, 1); //This var will store where the very top of the terrain is at, for simplicity later on
top_height = 200; //Make the starting height for the top of the terrain at the middle of the height of the world
add_height = 0; //The random height to add to the previous height of terrain
add_prev = 0; //The previous height added to the terrain
chunk=0; //The chunk from left to right
chunk_size=100; //The size of **biome** chunks (not loading) in blocks
chunk_biome = ds_grid_create(width/chunk_size+1,1); //What biome is in each chunk

dirt_layer_top = ds_grid_create(width+1,1); //Where the dirt stops and stone starts
stone_layer_top = ds_grid_create(width+1,1); //Where stone stops and bedrock starts
bedrock_layer_top = ds_grid_create(width+1,1); //Where bedrock stops and the core starts
dino_layer_top = ds_grid_create(width+1,1); //where the core starts and then the center of the world starts

//Make all blocks air
for (xx=0;xx<=width;xx++) 
{
	for (yy=0;yy<=height;yy++) 
	{
		ds_grid_add(world_block,xx,yy,0);
	}
}

