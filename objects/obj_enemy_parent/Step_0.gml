/// @description Move

if distance_to_object(player)<1000
{
	see_player=true;
}
else 
{
	see_player=false;
}

//Grounded
if place_meeting(x,y+1,obj_block_parent) 
{
	grounded=true
}
else
{
	grounded=false
}

if see_player 
{
	if x<player.x 
	{
		if xs<3 
		{
			xs+=.2;
		}
	}
	else 
	{
		if xs>-3 
		{
			xs-=.2;
		}
	}
	
}

//Gravity
ys+=.4;

///////////////////////////
//Auto jump
snapped=scr_auto_jump_enemy();


if position_meeting(x+xs+(sign(xs)*(sprite_width/2)),y-11,obj_block_parent) 
{
	
		if grounded 
		{
			ys=-7
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





