/// @description Mining

if mouse_check_button(mb_left) 
{
	//Get block under the mouse
	mouse_block=gen.world_block[# floor(mouse_x/13),floor(mouse_y/13)];
	block_get=instance_position(mouse_x,mouse_y,obj_destroy_parent)
	
	if mouse_block!=0 && block_get=block_get_prev
	{
		
		
		max_phase=scr_get_mine_max(mouse_block);
		
		mine_phase+=1;
		
		//If the animation is over, then delete
		if mine_phase=max_phase 
		{
			with(instance_position(mouse_x,mouse_y,obj_destroy_parent))
			{
				instance_destroy()
			}
			gen.world_block[# floor(mouse_x/13),floor(mouse_y/13)]=0 //Maybe add a background block here? 
			mine_phase=0;
		}
	} else {
		mine_phase=0;
	}
	
	block_get_prev=block_get
}
else 
{
	mine_phase=0
}