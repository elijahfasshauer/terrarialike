ini_open("world_blocks.ini")

ds_grid_read(global.world_block,ini_read_string("world","1",""))

ini_close()
