/// @description Insert description here
// You can write your code in this editor
draw_text(0,0,"Press F to do perlin")
biome_in=gen.chunk_biome[# x/13/gen.chunk_size,0]
top=gen.world_top[# x/13,0]
draw_text(0,50,"Biome: "+biome_in)
draw_text(0,100,"Ground Y Value: "+string(top))