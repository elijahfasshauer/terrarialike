//Save the whole world


ini_open("world"+string(global.world_loaded)+".ini");
ini_write_string("world","blocks",ds_grid_write(global.world_block));

ini_close();


