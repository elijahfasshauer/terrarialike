//Save the whole world


ini_open("world"+string(global.world_count+1)+".ini")

ini_write_string("world","1",ds_grid_write(gen.world_block));

ini_close();

global.world_count+=1;

scr_world_count_save();