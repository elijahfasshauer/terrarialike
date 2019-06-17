/// @description Insert description here
// You can write your code in this editor



if follow=head 
{
	x=follow.x;
	y=follow.y;
}
else 
{
	x=follow.x+lengthdir_x(26,follow.image_angle-90);
	y=follow.y+lengthdir_y(26,follow.image_angle-90);
}


image_angle+=((point_direction(x,y,xprev,yprev)+90)-image_angle)/4;

image_angle_prev=follow.image_angle;

xprev=x
yprev=y