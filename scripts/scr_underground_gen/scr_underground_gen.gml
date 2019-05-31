//Generate underground layers
for (xx=0;xx<width;xx++) 
{
	//Set layer heights
	gen.dirt_layer_top[# xx,0]=gen.world_top[# xx,0]+1;
	dirt_layer_height=10;
	gen.stone_layer_top[# xx,0]=gen.dirt_layer_top[# xx,0]+dirt_layer_height+choose(1,0,0,0,-1);
	stone_layer_height=20;
	gen.bedrock_layer_top[# xx,0]=gen.stone_layer_top[# xx,0]+stone_layer_height+choose(1,0,0,0,-1);
	
	//Dirt
	biome_in=gen.chunk_biome[# xx/gen.chunk_size,0];
	if biome_in="Forest Flat" 
	{
		layer_block=4; //Dirt for now
	} else if biome_in="Forest Mountain" {
		layer_block=3;
	}
	else
	{
		layer_block=2;
	}
	
	
	for(yy=gen.dirt_layer_top[# xx,0];yy<gen.stone_layer_top[# xx,0]+dirt_layer_height;yy++) 
	{
		gen.world_block[# xx,yy]=layer_block;
	}
	
	layer_block=5;
	
	//Stone
	
	
	for(yy=gen.stone_layer_top[# xx,0];yy<gen.bedrock_layer_top[# xx,0];yy++) 
	{
		gen.world_block[# xx,yy]=layer_block;
	}
}