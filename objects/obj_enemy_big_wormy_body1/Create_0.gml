/// @description Insert description here
// You can write your code in this editor
body_prev=self

head=instance_nearest(x,y,obj_enemy_big_wormy_head);

for(head.length=0;head.length<head.max_length;head.length++)
{
	body=instance_create_depth(x,y,5,obj_enemy_big_wormy_body2);
	body.follow=body_prev;
	body_prev=body
}


image_angle=90;
image_angle_prev=90;
xprev=0;
yprev=0;