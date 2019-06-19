/// @description Insert description here
// You can write your code in this editor
xs=0;
ys=0;
length=0;
//max_length=choose(5,10,15,20,100,150)
max_length=100
body=instance_create_depth(x,y,5,obj_enemy_big_wormy_body1);
body.follow=self;
image_angle_prev=0;
depth=1
max_ys=choose(5,7,10);
max_xs=choose(5,7);