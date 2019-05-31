for (xx=0;xx<=width;xx++) 
{
	for (yy=0;yy<=height;yy++) 
	{
		if ds_grid_get(gen.world_block,xx,yy)=1 
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_parent);
		}
		else if ds_grid_get(gen.world_block,xx,yy)=2
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_2);
		}
		else if ds_grid_get(gen.world_block,xx,yy)=3
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_3);
		}
		else if ds_grid_get(gen.world_block,xx,yy)=4
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_4);
		}
		else if ds_grid_get(gen.world_block,xx,yy)=5
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_5);
		}
		else if ds_grid_get(gen.world_block,xx,yy)=6
		{
			
			instance_create_depth(xx*13,yy*13,0,obj_block_6);
		}
	}
}