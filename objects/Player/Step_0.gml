/// @description Insert description here
// You can write your code in this editor

//Physics test ~ samir
//gravity
 //is he grouded???


if place_meeting(x,y+1,obj_block_parent) 
{
	grounded = true;
}
else 
{
	grounded = false;
}

ys+=g;



if place_meeting(x,y+ys,obj_block_parent) {
	while(!place_meeting(x,y+1,obj_block_parent)) {
		y+=1
	}
	ys=0
}

y += ys;




if keyboard_check(vk_up)
{
	
}
if keyboard_check(vk_down)
{
	
}
if keyboard_check(vk_left)
{
	xs -= xa;
	if(xs <= -5)
	{
		xs = -5;
		
	}
}
if keyboard_check(vk_right)
{   
	xs += xa;
	if(xs >= 5)
	{
		xs = 5;
		
	}
}

if keyboard_check(vk_left) && keyboard_check(vk_right) {
	if xs>0 {
		
	}
}

x += xs;