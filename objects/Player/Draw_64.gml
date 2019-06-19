/// @description Draw game info
biome_in=gen.chunk_biome[# x/13/gen.chunk_size,0];
draw_text(5,50,"Biome: "+string(biome_in));
draw_text(5,100,"FPS: "+string(fps));
draw_text(5,150,"Time: "+string(level.time)+" "+string(level.day))
draw_text(5,200,"F to save, L to load");
draw_text(5,250,"Scroll to zoom, Shift to crouch, W to fly");
draw_text(5,300,"R to generate new world, A, D, and space to move");
draw_text(5,350,"E to open inventory");