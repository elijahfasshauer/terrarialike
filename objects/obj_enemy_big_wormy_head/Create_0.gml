/// @description Insert description here
// You can write your code in this editor
xs=0;
ys=0;
length=0;
body=instance_create_depth(x,y,0,obj_enemy_big_wormy_body);
body.follow=self;
image_angle_prev=0;
max_length=irandom(5)