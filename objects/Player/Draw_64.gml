/// @description Draw game info
biome_in=gen.chunk_biome[# x/13/gen.chunk_size,0];
top=gen.world_top[# x/13,0];
draw_text(0,50,"Biome: "+biome_in);
draw_text(0,100,"Ground Y Value: "+string(top));
draw_text(0,150,"FPS: "+string(fps))
draw_text(0,200,string(chunk_in_x))
draw_text(0,250,"F to save, L to load")