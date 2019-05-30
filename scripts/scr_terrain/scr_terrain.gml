///@param starting_xx_chunk
///@param starting_height
///@param biome
chunk=argument0;
top_height=argument1;
biome=argument2;
starting_height=top_height;


//Selected biome for this chunk
if biome="Forest Mountain" 
{
	for(xx=chunk*gen.chunk_size;xx<chunk*gen.chunk_size+gen.chunk_size;xx++) 
	{
		//Set the top of terrain
		gen.add_height=choose(choose(-2,1,0,0,0,-1,2),gen.add_prev,gen.add_prev,gen.add_prev)
		top_height+=gen.add_height;
		gen.add_prev=gen.add_height;
		
		//Add to world map
		ds_grid_set(gen.world_block,xx,top_height,1);
		ds_grid_set(gen.world_top,xx,0,top_height);
		
	}
}

else if biome="Forest Flat" {
	for(xx=chunk*gen.chunk_size;xx<chunk*gen.chunk_size+gen.chunk_size;xx++) 
	{
		//Set the top of terrain
		gen.add_height=choose(choose(-1,1),0,0,0,0,0);
		top_height+=gen.add_height;
		gen.add_prev=gen.add_height;
		
		//Add to world map
		ds_grid_set(gen.world_block,xx,top_height,2);
		ds_grid_set(gen.world_top,xx,0,top_height);
		
	}
}
else if biome="Forest Mound" {
	for(xx=chunk*gen.chunk_size;xx<chunk*gen.chunk_size+gen.chunk_size;xx++) 
	{
		//Set the top of terrain
		top_height=starting_height+round(sin((xx+gen.chunk_size/2)/(gen.chunk_size/4))*-5)
		gen.add_prev=gen.add_height;
		
		//Add to world map
		ds_grid_set(gen.world_block,xx,top_height,1);
		ds_grid_set(gen.world_top,xx,0,top_height);
		
	}
}


return top_height;