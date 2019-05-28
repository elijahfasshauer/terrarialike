/// @description Movement and more

//Physics test ~ samir
//Gravity
ys+=g;

//Is he grounded???
if place_meeting(x,y+1,obj_block_parent) 
{
	grounded = true;
}
else 
{
	grounded = false;
}









//MOVEMENT
if keyboard_check(vk_up)
{
	if grounded
	{
	ys = -5;
	}
	
}
if keyboard_check(vk_down)
{
	
}

//Move left
if keyboard_check(vk_left) && !keyboard_check(vk_right)
//>>>>>>> master
{
	xs -= xa;
	
	if(xs <= -5)
	{
		xs = -5;
	}
	//Look left
	image_xscale=-1
}

//Move right
if keyboard_check(vk_right) && !keyboard_check(vk_left)
//>>>>>>> master
{   
	xs += xa;
	
	if(xs >= 5)
	{
		xs = 5;
		
	}
	//Look right
	image_xscale=1
}
//Friction
//Both keys
if keyboard_check(vk_left) && keyboard_check(vk_right) 
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
if !keyboard_check(vk_left) && !keyboard_check(vk_right) 
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

//Make vertical movement
y += ys;