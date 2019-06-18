/// @description Insert description here
// You can write your code in this editor
head=instance_nearest(x,y,obj_enemy_big_wormy_head);
head.length+=1;
if head.length<150
{
	body=instance_create_depth(x,y,0,obj_enemy_big_wormy_body2);
	body.follow=self;
}
image_angle=90;
image_angle_prev=90;
xprev=0;
yprev=0;