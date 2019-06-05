/// @description Mining

if mouse_check_button(mb_left) 
{
	//Get block under the mouse
	mouse_block=gen.world_block[# floor(mouse_x/13),floor(mouse_y/13)]
	
	if mouse_block!=0 
	{
		
		mine_phase=0
		max_phase=scr_get_mine_max(mouse_block)
		
		
		
		//If the animation is over, then delete
		if mine_phase=max_phase 
		{
			with(instance_position(mouse_x,mouse_y,obj_destroy_parent))
			{
				instance_destroy()
			}
		}
	}
	
	
}