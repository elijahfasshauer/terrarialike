/// @description Insert description here
// You can write your code in this editor

if distance_to_point(player.x, player.y) < player.md
{
	instance_destroy()
	gen.world_block[# floor(x/13),floor(y/13)]=0
}