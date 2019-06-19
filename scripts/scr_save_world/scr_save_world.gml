//Save the whole world

ini_open("world_blocks.ini")

ini_write_string("world","1",ds_grid_write(gen.world_block));

ini_close();