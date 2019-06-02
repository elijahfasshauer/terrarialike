ini_open("world_blocks.ini")

ds_grid_read(gen.world_block,ini_read_string("world","1",""))

ini_close()