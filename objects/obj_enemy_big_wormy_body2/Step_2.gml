/// @description Insert description here
// You can write your code in this editor



if follow=head 
{
	x=follow.x;
	y=follow.y;
	//move_towards_point(follow.x,follow.y,distance_to_point(follow.x,follow.y)*2)
}
else 
{
	//x=follow.x+lengthdir_x(26,follow.image_angle-90);
	//y=follow.y+lengthdir_y(26,follow.image_angle-90);
	gotox=follow.x//+lengthdir_x(7,follow.image_angle-90)
	gotoy=follow.y//+lengthdir_y(7,follow.image_angle-90)
	move_towards_point(gotox,gotoy,distance_to_point(gotox,gotoy))
}


//image_angle=point_direction(lengthdir_x(7,follow.image_angle),lengthdir_y(7,follow.image_angle),0,0)

image_angle_prev=follow.image_angle;

xprev=x
yprev=y