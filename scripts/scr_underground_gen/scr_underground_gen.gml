//Generate underground layers
for (xx=0;xx<width;xx++) 
{
	//Set layer heights
	gen.dirt_layer_top[# xx,0]=gen.world_top[# xx,0]+1;
	dirt_layer_height=10;
	gen.stone_layer_top[# xx,0]=gen.dirt_layer_top[# xx,0]+dirt_layer_height+choose(1,0,0,0,-1);
	stone_layer_height=100;
	gen.bedrock_layer_top[# xx,0]=gen.stone_layer_top[# xx,0]+stone_layer_height+choose(3,2,1,0,-1,-2,-3);
	bedrock_layer_height=200;
	gen.dino_layer_top[# xx,0]=gen.bedrock_layer_top[# xx,0]+bedrock_layer_height+choose(1,0,0,0,-1);
	//dino_layer_height=50;
	
	
	//Dirt
	//Change dirt if in different biomes
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
	
	
	
	//Stone
	layer_block=5;
	
	for(yy=gen.stone_layer_top[# xx,0];yy<gen.bedrock_layer_top[# xx,0];yy++) 
	{
		gen.world_block[# xx,yy]=layer_block;
	}
	
	
	//Bedrock
	layer_block=6
	
	for(yy=gen.bedrock_layer_top[# xx,0];yy<gen.dino_layer_top[# xx,0];yy++) 
	{
		gen.world_block[# xx,yy]=layer_block;
	}
	
}