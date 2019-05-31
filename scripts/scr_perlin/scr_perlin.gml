//Perlin noise stranded values suicide (makes the terrain smoother)
	times=0;
	
	while times!=2 
	{
		for (xx=0;xx<=width;xx++) 
		{
			
			//Check left of top of terrain
			if gen.world_block[# xx-1,gen.world_top[# xx,0]]=0 
			{
				//Check to the right
				if gen.world_block[# xx+1,gen.world_top[# xx,0]]=0 
				{
					//Check to the top left
					if gen.world_block[# xx-1,gen.world_top[# xx,0]-1]=0 
					{
						//Check to the top right
						if gen.world_block[# xx+1,gen.world_top[# xx,0]-1]=0 
						{
							//Check to the top top left (2 above)
							if gen.world_block[# xx-1,gen.world_top[# xx,0]-2]=0
							{
								//Check to the top top right (2 above)
								if gen.world_block[# xx+1,gen.world_top[# xx,0]-2]=0 
								{
									//If there is air all around the top of the block, it will move down one to fit in better
									gen.world_top[# xx,0]+=1;
									
									block_type=gen.world_block[# xx,gen.world_top[# xx,0]-1];
									gen.world_block[# xx,gen.world_top[# xx,0]]=block_type;
									gen.world_block[# xx,gen.world_top[# xx,0]-1]=0;
								}
							}
						}
					}
				}
			}
		}
	
		for (xx=0;xx<=width;xx++) 
		{
				//Check left of top of terrain
			if gen.world_block[# xx-1,gen.world_top[# xx,0]]=0 
			{
		
				//Check to the right
				if gen.world_block[# xx+1,gen.world_top[# xx,0]]=0
				{
			
					//Check to the bottom left
					if gen.world_block[# xx-1,gen.world_top[# xx,0]+1]=0
					{
		
						//Check to the bottom right
						if gen.world_block[# xx+1,gen.world_top[# xx,0]+1]=0 
						{
			
							//Check to the bottom left
							if gen.world_block[# xx-1,gen.world_top[# xx,0]+2]=0
							{
			
								//Check to the bottom right
								if gen.world_block[# xx+1,gen.world_top[# xx,0]+2]=0 
								{
									//If there is air all around the bottom of the block, it will move up one to fit in
									gen.world_top[# xx,0]-=1;
									
									block_type=gen.world_block[# xx,gen.world_top[# xx,0]+1];
									gen.world_block[# xx,gen.world_top[# xx,0]]=block_type;
									gen.world_block[# xx,gen.world_top[# xx,0]+1]=0;
								}
							}
						}
					}
				}
			}
		}
		times+=1;
	
	}
	exit;