///@param starting_xx_chunk
///@param starting_height
///@param biome
chunk=argument0;
top_height=argument1;
biome=argument2;
chunk_biome[# chunk,0]=biome
starting_height=top_height;


//Selected biome for this chunk
if biome="Forest Mountain" 
{
	for(xx=chunk*gen.chunk_size;xx<chunk*gen.chunk_size+gen.chunk_size;xx++) 
	{
		//Set the top of terrain
		//If it is not steep
		if gen.add_height=0 {
			gen.add_height=choose(choose(1,1,0,0,0,-1,-1),gen.add_prev,gen.add_prev,gen.add_prev)
		} 
		else if gen.add_height=1 {
			gen.add_height=choose(choose(2,0),gen.add_prev,gen.add_prev,gen.add_prev)
		} else if gen.add_height=-1
		{
			gen.add_height=choose(choose(-2,0),gen.add_prev,gen.add_prev,gen.add_prev)
		}
		else if gen.add_height=2 //If it is steep already
		{
			gen.add_height=choose(1,gen.add_prev,gen.add_prev)
		}
		else 
		{
			gen.add_height=choose(-1,gen.add_prev,gen.add_prev)
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
else if biome="Forest Mound" {
	//Set random height of mound
	mound_height=choose(irandom_range(5,20),irandom_range(10,50))
	for(xx=chunk*gen.chunk_size;xx<chunk*gen.chunk_size+gen.chunk_size;xx++) 
	{
		//Set the top of terrain
		top_height=starting_height+round(sin((.02*pi*(xx-chunk*gen.chunk_size))-(2.5*pi))*-mound_height)-mound_height+choose(1,0,0,0,0);
		gen.add_prev=gen.add_height;
		
		//Add to world map
		ds_grid_set(gen.world_block,xx,top_height,3);
		ds_grid_set(gen.world_top,xx,0,top_height);
		
		//trees
		rock=irandom(40)
		if rock=1 {
			ds_grid_set(gen.world_block,xx,top_height-1,5)
		}
		else if rock=2 {
			ds_grid_set(gen.world_block,xx,top_height,5)
		}
		
		
	}
}


return top_height;