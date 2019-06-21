//Save the whole world


ini_open("world"+string(global.world_count)+".ini")

ini_write_string("world","1",ds_grid_write(global.world_block));

ini_close();


