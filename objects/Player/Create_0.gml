/// @description Initial Variables
//Samir
//physics test 
g = .2; //gravity
ys = 0; //y speed
grounded = false;
xs = 0; //x speed
xa = .1; //x acceleration spelling is hard
ms = 5; //max speed the player can reach
cs = 1; //crouching speed divider, this will become 2 when crouching so the the player moves half the max speed
crouching = false; //is he crouching?
snapped = false; //Did he snap to the y of as block while walking in the last frame?
jump_speed = 3;
md = 1000; //Mining Distance for the player, 52 is the starting and is 3 blocks away
d = false; //justed pressed d
a = false; //justed pressed a

instance_create_depth(x,y,0,obj_camera)