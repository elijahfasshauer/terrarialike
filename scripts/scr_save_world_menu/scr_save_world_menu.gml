//Save the whole world


ini_open("world"+string(global.world_count+1)+".ini");

ini_write_string("world","blocks",ds_grid_write(global.world_block));
ini_write_string("world","top",ds_grid_write(global.world_top));
ini_write_real("world","width",global.width);
ini_write_real("world","height",global.height);
ini_write_string("world","biome",ds_grid_write(global.chunk_biome));

ini_close();

global.world_count+=1;

scr_world_count_save();