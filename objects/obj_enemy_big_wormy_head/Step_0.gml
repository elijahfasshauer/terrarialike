/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_block_parent) 
{
	xs+=lengthdir_x(.1,point_direction(x,y,player.x,player.y))
	ys+=lengthdir_y(.1,point_direction(x,y,player.x,player.y))
	ys+=.02
}
else 
{
	ys+=.1;
}
image_angle=point_direction(0,0,xs,ys)-90

if xs>2 
{
	xs=2
}
if xs<-2
{
	xs=-2
}
if ys>5 {
	ys=5
}
if ys<-5 {
	ys=-5
}

x+=xs;
y+=ys;
