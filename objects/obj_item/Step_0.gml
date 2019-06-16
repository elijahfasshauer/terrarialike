/// @description Insert description here
// You can write your code in this editor




if xs!=0 
{
	xs-=sign(xs)*.1
}



if distance_to_object(player)<30
{
	xs=sign(player.x-5-x)
	ys=sign(player.y-5-y)
}
else 
{
	//Gravity
	ys+=.1;
}

//Collision
if place_meeting(x+xs,y,obj_block_parent)
{
	while(!place_meeting(x+sign(xs),y,obj_block_parent))
	{
		x+=sign(xs);
	}
	xs=0;
}

x+=xs;

//Collision
if place_meeting(x,y+ys,obj_block_parent)
{
	while(!place_meeting(x,y+sign(ys),obj_block_parent))
	{
		y+=sign(ys);
	}
	ys=0;
}

y+=ys;

