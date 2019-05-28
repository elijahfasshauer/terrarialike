/// @description Generate each chunk


alarm[0]=50;
if chunk<6 
{
	top_height=scr_terrain(chunk,top_height,choose("Mountain","Flat"));
} 
else if chunk=6
{
	
	with(obj_block_parent) 
	{
		instance_destroy();
	}
	
	scr_perlin();
	
}

for (xx=0;xx<=width;xx++)
{
	for (yy=0;yy<=height;yy++) 
	{
		if ds_grid_get(world_block,xx,yy)=1 
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_parent);
		}
	}
}
chunk+=1;