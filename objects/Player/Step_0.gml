/// @description Movement and more

//Physics test ~ samir
//Gravity
ys+=g;

//Is he grounded???
if place_meeting(x,y+1,obj_block_parent) //checks to see if the player is touching the ground
{
	grounded = true;
}
else 
{
	grounded = false;
}









//*********************************Movement*********************************\\
//Jumping
if keyboard_check_pressed(vk_space)
{
	if grounded
	{
	ys = -jump_speed;
	}
}
if keyboard_check(ord("W"))
{
	
	ys = -jump_speed;
	
}
//crouching
if keyboard_check(vk_shift)
{
	crouching = true;
	sprite_index = spr_player_c;
	if grounded
	{
		cs = 2; //makes you go half the speed when crouching when on the ground
	}
	else
	{
		cs = 1;//not on the ground can go full speed
	}
}
else
{
	crouching = false;
	sprite_index = spr_player_1;
	cs = 1;
}

//Move left
if keyboard_check(ord("A")) && !keyboard_check(ord("D"))
{
	//* no more slip *\\
	if(!a)
	{
		a = true;
	}
	if xs > 0 && d
	{
		xs -= xa*2;
		if xs < .3
		{
			d = false;
		}
	}
	
	
	//*basic movement*\\
	xs -= xa;
	
	if(xs <= -ms/cs)
	{
		xs = -ms/cs;
	}
	//Look left
	image_xscale=-1
	
	if grounded
	{
		image_speed = abs(xs)/12;
	}
	else
	{
		image_index = 0;
		image_speed = 0;
		
	}
}
else if keyboard_check(ord("D")) && !keyboard_check(ord("A"))

{   
	//* no more slip *\\
	if(!d)
	{
		d = true;
	}
	if xs < 0 && a
	{
		xs += xa*2;
		if xs > -.3
		{
			a = false;
		}
	}
	
	//*basic movement*\\
	xs += xa;
	
	if(xs >= ms/cs)
	{
		xs = ms/cs;
		
	}
	//Look right
	image_xscale=1
	if grounded
	{
		image_speed = abs(xs)/6;
	}
	else
	{
		image_index = 0;
		image_speed = 0;
		
	}
}
else
{
	
	image_index = 0;
	image_speed = 0;
		
}
//Friction
//Both keys
if keyboard_check(ord("A")) && keyboard_check(ord("D")) 
{
	if xs > 0 
	{
		xs -= xa*3;
	}
	if xs < 0 
	{
		xs += xa*3;
	}
	if xs <= .3 && xs >= -.3
	{
		xs = 0
	}
}
//No keys
if !keyboard_check(ord("A")) && !keyboard_check(ord("D")) 
{
	if xs > 0 
	{
		xs -= xa*3;
	}
	if xs < 0 
	{
		xs += xa*3;
	}
	if xs <= .3 && xs >= -.3
	{
		xs = 0
	}
}




//*********************************AutoJump*********************************\\
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





//////////////////////////////////////////////////////////////////////////////////////////////
//Collisions

//Horizontal Collisions
if place_meeting(x+xs,y,obj_block_parent) && snapped=false
{
	while(!place_meeting(x+sign(xs),y,obj_block_parent)) 
	{
		x+=sign(xs);
	}
	xs=0;
}

//Make horizontal movement
x += xs;

//Vertical Collisions
if place_meeting(x,y+ys,obj_block_parent)
{
	while(!place_meeting(x,y+sign(ys),obj_block_parent)) 
	{
		y+=sign(ys);
	}
	ys=0;
}

//Make vertical movement
y += ys;


//Set back to false for next frames
snapped=false;