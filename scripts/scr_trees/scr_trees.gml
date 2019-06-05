//Add trees (Duh)

for(xx=0;xx<=width;xx++)
{
	tree=irandom(10)

	if tree=1 
	{
		tree_height=choose(5,7,9,11)
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
}