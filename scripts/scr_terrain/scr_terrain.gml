///@param starting_xx_chunk
///@param starting_height
///@param biome
chunk=argument0;
top_height=argument1;
biome=argument2;


//Selected biome for this chunk
if biome="Forest Mountain" 
{
	for(xx=chunk*gen.chunk_size;xx<chunk*gen.chunk_size+gen.chunk_size;xx++) 
	{
		//Set the top of terrain
		r=choose(2,2,2,3)
		if r=1 {
			gen.add_height+=choose(1,0,0,0,-1)
		}
		else if r=2
		{
			gen.add_height=gen.add_prev
		}
		else 
		{
			gen.add_height=choose(-2,1,0,0,0,-1,2)
		}
		if gen.add_height<-2 {
			gen.add_height=-2
		}
		if gen.add_height>2 {
			gen.add_height=2
		}
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


return top_height;