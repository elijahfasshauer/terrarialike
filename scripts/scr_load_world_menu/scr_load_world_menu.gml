ini_open("world"+string(global.world_loaded)+".ini");

ds_grid_read(global.world_block,ini_read_string("world","blocks",""));
ds_grid_read(global.world_top,ini_read_string("world","top",""));
ini_read_real("world","width",0);
ini_read_real("world","height",0);
ds_grid_read(global.chunk_biome,ini_read_string("world","biome",""));

ini_close();
