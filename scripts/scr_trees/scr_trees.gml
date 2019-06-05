//Add trees (Duh)

for(xx=0;xx<=width;xx++)
{
	tree=irandom(10)
	rock=irandom(20)
	bush=irandom(10)

	if tree=1 
	{
		tree_height=choose(5,7,9,11,13,15)
		for(yy=-1;yy>=-tree_height;yy--) 
		{
			gen.world_block[# xx, gen.world_top[# xx,0]+yy]=7
		}
		gen.world_block[# xx+1, gen.world_top[# xx,0]-tree_height]=8
		gen.world_block[# xx-1, gen.world_top[# xx,0]-tree_height]=8
		gen.world_block[# xx+2, gen.world_top[# xx,0]-tree_height]=8
		gen.world_block[# xx-2, gen.world_top[# xx,0]-tree_height]=8
		gen.world_block[# xx, gen.world_top[# xx,0]-tree_height-1]=8
		gen.world_block[# xx+1, gen.world_top[# xx,0]-tree_height-1]=8
		gen.world_block[# xx-1, gen.world_top[# xx,0]-tree_height-1]=8
		gen.world_block[# xx, gen.world_top[# xx,0]-tree_height-2]=8
		
	} 
	else if rock=1
	{
		gen.world_block[# xx, gen.world_top[# xx,0]-1]=9
	}
	else if bush=1 
	{
		bush_type=choose(1,2)
		if bush_type=1 
		{
			gen.world_block[# xx, gen.world_top[# xx,0]-1]=8
		} 
		else 
		{
			gen.world_block[# xx, gen.world_top[# xx,0]-1]=8
			gen.world_block[# xx, gen.world_top[# xx,0]-2]=8
		}
	}
	
	
}