//Generate underground layer 1
for (xx=0;xx<width;xx++) 
{
	biome_in=gen.chunk_biome[# xx/gen.chunk_size,0];
	if biome_in="Forest Flat" 
	{
		layer_block=4 //Dirt for now
	} else if biome_in="Forest Mountain" {
		layer_block=3
	}
	else
	{
		layer_block=2
	}
	gen_layer_top=gen.world_top[# xx,0]+1;
	layer_height=10
	for(yy=gen_layer_top;yy<gen_layer_top+layer_height+choose(1,0,0,0,-1);yy++) 
	{
		gen.world_block[# xx,yy]=layer_block
	}
}