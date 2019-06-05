/// @description If close enough, destroy self

if distance_to_point(player.x, player.y) < player.md //mouse distance to player
{
	instance_destroy()
	gen.world_block[# floor(x/13),floor(y/13)]=0
}