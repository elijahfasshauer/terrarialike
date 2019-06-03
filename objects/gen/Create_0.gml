/// @description Variables
b_w = 13; //The blocks are 13 pixels for now :)
width = room_width/b_w; //The room but snapped to 13x13 grid
height = room_height/b_w;
world_block = ds_grid_create(width+1, height+1); //This var will store the type of block and where it is in the world
world_top = ds_grid_create(width+1, 1); //This var will store where the very top of the terrain is at, for simplicity later on
top_height = 200; //Make the starting height for the top of the terrain at the middle of the height of the world
add_height = 0;
add_prev = 0;
chunk=0;
chunk_size=100;
chunk_biome = ds_grid_create(width/chunk_size+1,1);

dirt_layer_top = ds_grid_create(width+1,1);
stone_layer_top = ds_grid_create(width+1,1);
bedrock_layer_top = ds_grid_create(width+1,1);
dino_layer_top = ds_grid_create(width+1,1);


//Make all blocks air
for (xx=0;xx<=width;xx++) 
{
	for (yy=0;yy<=height;yy++) 
	{
		ds_grid_add(world_block,xx,yy,0);
		world_top[# xx,0]=0;
		dirt_layer_top[# xx,0]=0;
		stone_layer_top[# xx,0]=0;
	}
}


///////////////////////////////////////////////////////////////////////////////
///Generate terrain

//Generate top by chunk+biome
for(chunk=0;chunk<=20;chunk++) 
{
	top_height=scr_terrain_top(chunk,top_height,choose("Forest Mountain","Forest Flat","Forest Mound"));
	
} 


//Do perlin noise adjustments (Must be done before underground and trees are gen'd)
scr_perlin();


//Add trees
scr_trees();


//Generate underground layers
scr_underground_gen();


//Saving the world
//scr_save_world();










