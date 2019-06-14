if ys>=0 && !keyboard_check(ord("S"))
{
	//right side
	if xs > 0 or (keyboard_check(ord("D")) && !keyboard_check(ord("A")))
	{
		// test if x has changed somehow {
			if !position_meeting(x+xs+14,y+6,obj_block_parent) 
			{
				if !position_meeting(x+xs+14,y-7,obj_block_parent)
				{
					if !position_meeting(x+xs+14,y-20,obj_block_parent)
					{
						if !position_meeting(x+10,y-21,obj_block_parent)
						{
							if !position_meeting(x-10,y-21,obj_block_parent)
							{
								if position_meeting(x+xs+14,y+19,obj_block_parent) 
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
										while((round(y+20))%13!=0) 
										{
											y-=1;
										}
										snapped=true;
									}
								} 
								else if position_meeting(x+xs+14,y+20,obj_block_parent) 
								{
									if !grounded 
									{
										//ys=0;
										while((round(y+20))%13!=0) 
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
		//}
	}
	//left side
	if xs < 0 or (keyboard_check(ord("A")) && !keyboard_check(ord("D")))
	{
		if !position_meeting(x+xs-14,y+6,obj_block_parent) 
		{
			if !position_meeting(x+xs-14,y-7,obj_block_parent)
			{
				if !position_meeting(x+xs-14,y-20,obj_block_parent)
				{
					if !position_meeting(x+10,y-21,obj_block_parent)
					{
						if !position_meeting(x-10,y-21,obj_block_parent)
						{
						
							if position_meeting(x+xs-14,y+19,obj_block_parent) 
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
									while((round(y+20))%13!=0) 
									{
										y-=1;
									}
									snapped=true;
								}
							} 
							else if position_meeting(x+xs-14,y+20,obj_block_parent) 
							{
								if !grounded 
								{
									//ys=0;
									while((round(y+20))%13!=0) 
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