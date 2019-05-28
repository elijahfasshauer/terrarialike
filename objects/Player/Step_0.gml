/// @description Movement and more

//Physics test ~ samir
//Gravity
ys+=g;

//Is he grounded???
if place_meeting(x,y+1,obj_block_parent) //checks to see if the player is touchiung the ground
{
	grounded = true;
}
else 
{
	grounded = false;
}









//*********************************Movement*********************************\\
//Jumping
if keyboard_check(vk_space)
{
	if grounded
	{
	ys = -5;
	}
}
if keyboard_check(ord("W"))
{
	if grounded
	{
	ys = -5;
	}	
}
//crouching
if keyboard_check(vk_shift)
{
	crouching = true;
	sprite_index = sprite3;
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
	sprite_index = sprite2;
	cs = 1;
}

//Move left
if keyboard_check(ord("A")) && !keyboard_check(vk_right)
{
	xs -= xa;
	
	if(xs <= -ms/cs)
	{
		xs = -ms/cs;
	}
	//Look left
	image_xscale=-1
	
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
else if keyboard_check(ord("D")) && !keyboard_check(ord("A"))

{   
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
	if xs>0 {
		xs -= xa*3;
	}
	if xs < 0 
	{
		xs += xa*3
	}
	if xs <= .3 && xs >= -.3
	{
		xs = 0
	}
}
//No keys
if !keyboard_check(ord("A")) && !keyboard_check(ord("D")) 
{
	if xs>0 {
		xs -= xa*3;
	}
	if xs < 0 
	{
		xs += xa*3
	}
	if xs <= .3 && xs >= -.3
	{
		xs = 0
	}
}

//Collisions

//Horizontal Collisions
if place_meeting(x+xs,y,obj_block_parent) 
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
if xs > 0
{
	if position_meeting(x+xs+13,y+13,obj_block_parent) 
	{
		if !position_meeting(x+xs+13,y,obj_block_parent) 
		{
			if !position_meeting(x+xs+13,y-13,obj_block_parent)
			{
				if grounded
				{
					y = y -13;	
				}
			}
		
		}
	
	}
}
if xs < 0 
{
	if position_meeting(x+xs-13,y+13,obj_block_parent) 
	{
		if !position_meeting(x+xs-13,y,obj_block_parent) 
		{
			if !position_meeting(x+xs-13,y-13,obj_block_parent)
			{
				if grounded
				{
					y = y -13;	
				}
			}
		
		}
	
	}
}






//Make vertical movement
y += ys;