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




if keyboard_check_pressed(vk_up)
{
	
}
if keyboard_check_pressed(vk_down)
{
	
}
if keyboard_check_pressed(vk_left)
{
	xs = -1;
}
if keyboard_check_pressed(vk_right)
{
	xs = 1;
}
x += xs;