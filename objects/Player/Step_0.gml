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


if (!grounded) //if on the ground the speed the player falls at will increase to the value of g
{
	ys = ys - g;
}
if (grounded)
{
	ys = 0;
}

y -= ys;


