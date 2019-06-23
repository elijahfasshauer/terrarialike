/// @description Insert description here
// You can write your code in this editor
rot=0
plus=.1

cursor_sprite = spr_mouse;

global.b_w=13;
global.world_loaded=1
randomize()
global.width=10240/13; ///CHANGE IF BLOCK WIDTH CHANGES
global.height=10000/13;
chunk_size=100;
global.world_block=ds_grid_create(global.width+1, global.height+1);
global.world_top=ds_grid_create(global.width+1, 1);
global.chunk_biome=ds_grid_create(global.width/chunk_size+1,1);