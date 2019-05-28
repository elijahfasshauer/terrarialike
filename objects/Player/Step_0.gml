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









if keyboard_check(vk_up)
{
	
}
if keyboard_check(vk_down)
{
	
}
//Move left
if keyboard_check(vk_left) && !keyboard_check(vk_right)
{
	xs -= xa;
	
	if(xs <= -5)
	{
		xs = -5;
	}
}
//Move right
if keyboard_check(vk_right) && !keyboard_check(vk_left)
{   
	xs += xa;
	
	if(xs >= 5)
	{
		xs = 5;
		
	}
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
	if xs < .1 && xs > -.1
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
	if xs < .1 && xs > -.1
	{
		xs = 0
	}
}

//Collisions

//Make horizontal movement
x += xs;

//Vertical Collisions
if place_meeting(x,y+ys,obj_block_parent) 
{
	while(!place_meeting(x,y+1,obj_block_parent)) 
	{
		y+=1
	}
	ys=0
}

//Make vertical movement
y += ys;