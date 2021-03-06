/// @description Initial Variables
//Samir
///physics variables
g = .2; //gravity
ys = 0; //y speed
grounded = false; //If player's on the ground
xs = 0; //x speed
xa = .1; //x acceleration
ms = 10; //max speed the player can reach 5
cs = 1; //crouching speed divider, this will become 2 when crouching so the the player moves half the max speed
crouching = false; //is he crouching?
snapped = false; //Did he snap to the y of as block while walking in the last frame?
jump_speed = 7; //Starting: 3
//md = 1000; //Mining Distance for the player, 52 is the starting and is 3 blocks away
d = false; //just pressed d
a = false; //just pressed a

//Snap to ground
alarm[0]=1

///Chunk loading variables
//Start with "ch"
ch_s=75; //Chunk size
ch_y=35; //Y chunk size
max_ch_x=floor(global.width/ch_s); //The # of chunks in the world (x)
max_ch_y=floor(global.height/ch_y); //The # of chunks in the world (y)
chunk_in_x=floor(x/13/ch_s); //What x of chunk player is in
chunk_in_y=floor(y/13/ch_y); //What y of chunk player is in
chunk_in_x_prev=-1; //The previous x chunk in (for checking if it needs to load new chunks)
chunk_in_y_prev=-1; //The previous y chunk in (for checking if it needs to load new chunks)
loaded=false; //If the chunks around the player have been loaded and if needed to be loaded
chunk_loaded_in_x=0; //The x chunk the player was in when the chunk was loaded
chunk_loaded_in_y=0; //The y chunk the player was in when the chunk was loaded

///Mining variables
mine_phase=0; //The timer for mining blocks
max_phase=0; //The max to the timer
mouse_block=0; //What ID of block that the mouse if hovering over
block_get=0; //Instance ID of hovering block
block_get_prev=0; //Previous instance ID of hovering block
mine_animation_frames=4; //starts with 0, change this when mining animation is new

//View
instance_create_depth(x,y,0,obj_camera);