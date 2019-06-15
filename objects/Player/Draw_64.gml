/// @description Draw game info
biome_in=gen.chunk_biome[# x/13/gen.chunk_size,0];
top=gen.world_top[# x/13,0];
draw_text(0,50,"Biome: "+string(biome_in));
draw_text(0,100,"Ground Y Value: "+string(top));
draw_text(0,150,"FPS: "+string(fps))
draw_text(0,200,"Chunk: "+string(chunk_in_x))
draw_text(0,250,"F to save, L to load")
draw_text(0,300,"X: "+string(chunk_in_x))
draw_text(0,350,"Y: "+string(chunk_in_y))
draw_text(0,400,"Scroll to zoom, Shift to crouch, W to fly")
draw_text(0,425,"R to generate new world, A, D, and space to move")