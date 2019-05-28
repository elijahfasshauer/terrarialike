///@param starting_xx_chunk
///@param starting_height
///@param biome
chunk=argument0;
top_height=argument1;
biome=argument2;

//Selected biome for this chunk
if biome="Mountain" 
{
	for(xx=chunk*gen.chunk_size;xx<chunk*gen.chunk_size+gen.chunk_size;xx++) 
	{
		//Set the top of terrain
		gen.add_height=choose(choose(-2,-1,-1,0,1,1,2),gen.add_prev,gen.add_prev,gen.add_prev);
		top_height+=gen.add_height;
		gen.add_prev=gen.add_height;
		
		//Add to world map
		ds_grid_set(gen.world_block,xx,top_height,1);
		ds_grid_set(gen.world_top,xx,0,top_height);
		
	}
}

else if biome="Flat" {
	for(xx=chunk*gen.chunk_size;xx<chunk*gen.chunk_size+gen.chunk_size;xx++) 
	{
		//Set the top of terrain
		gen.add_height=choose(choose(-1,1),0,0,0,0,0);
		top_height+=gen.add_height;
		gen.add_prev=gen.add_height;
		
		//Add to world map
		ds_grid_set(gen.world_block,xx,top_height,1);
		ds_grid_set(gen.world_top,xx,0,top_height);
		
	}
}


return top_height;