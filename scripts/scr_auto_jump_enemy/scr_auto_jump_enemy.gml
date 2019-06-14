if ys>=0 
{
	//right side
	if xs > 0
	{
	// test if x has changed somehow {
		if !position_meeting(x+xs+(sprite_width/2),y-13,obj_block_parent) 
		{
			if !position_meeting(x+xs+(sprite_width/2),y-25,obj_block_parent)
			{
				if !position_meeting(x+xs+(sprite_width/2),y-1,obj_block_parent)
				{
					if !position_meeting(x+10,y-14,obj_block_parent)
					{
						if !position_meeting(x-10,y-14,obj_block_parent)
						{
							if position_meeting(x+xs+(sprite_width/2),y+12,obj_block_parent) 
							{
								if grounded 
								{
									//ys=0
									y-=13;
									snapped=true;
								}
								else if !grounded 
								{
									//ys=0;
									y-=1;
									while((round(y+13))%13!=0) 
									{
										y-=1;
									}
									snapped=true;
								}
							} 
							else if position_meeting(x+xs+(sprite_width/2),y+13,obj_block_parent) 
							{
								if !grounded 
								{
									//ys=0;
									while((round(y+13))%13!=0) 
									{
										y-=1;
									}
									snapped=true;
								}
							}
						}
					}
				}
			}
		}
	}
	//left side
	if xs < 0 
	{
		if !position_meeting(x+xs-(sprite_width/2),y-13,obj_block_parent) 
		{
			if !position_meeting(x+xs-(sprite_width/2),y-25,obj_block_parent)
			{
				if !position_meeting(x+xs-(sprite_width/2),y-1,obj_block_parent)
				{
					if !position_meeting(x+10,y-14,obj_block_parent)
					{
						if !position_meeting(x-10,y-14,obj_block_parent)
						{
						
						if position_meeting(x+xs-(sprite_width/2),y+12,obj_block_parent) 
							{
								if grounded 
								{
									//ys=0
									y-=13;
									snapped=true;
								}
								else if !grounded 
								{
									//ys=0;
									y-=1;
									while((round(y+13))%13!=0) 
									{
										y-=1;
									}
									snapped=true;
								}
							} 
							else if position_meeting(x+xs-(sprite_width/2),y+13,obj_block_parent) 
							{
								if !grounded 
								{
									//ys=0;
									while((round(y+13))%13!=0) 
									{
										y-=1;
									}
									snapped=true;
								}
							}
						}
					}
				}
			}
		}
	}
}

return snapped;