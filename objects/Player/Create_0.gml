/// @description Initial Variables
//Samir
//physics variables
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

//Elijah
//Chunk loading variables
//Start with "ch"
ch_s=150; //Chunk size
chunk_in_x=floor(x/13/ch_s); //What x of chunk player is in
chunk_in_y=floor(y/13/ch_s); //What y of chunk player is in
chunk_in_x_prev=-1
chunk_in_y_prev=-1

//View
instance_create_depth(x,y,0,obj_camera)