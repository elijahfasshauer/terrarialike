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

ys+=1



if place_meeting(x,y+ys,obj_block_parent) {
	while(!place_meeting(x,y+1,obj_block_parent)) {
		y+=1
	}
	ys=0
}

y += ys;