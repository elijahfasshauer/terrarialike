if(keyboard_check_pressed(ord("E")))
{
	show_inventory = !show_inventory;
}


if(!show_inventory) 
{
	pickup_slot = -1;
	exit;
}

#region Mouse Slot
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cellsize+x_buffer)*scale;
var cell_ybuff = (cellsize+y_buffer)*scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;
var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;
if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height and i_mousey > 0 and i_mousex > 0)
{
	var sx = i_mousex - (nx*cell_xbuff);
	var sy = i_mousey - (ny*cell_ybuff);
	
	if(sx < cellsize*scale and sy < cellsize*scale)
	{
		m_slotx = nx;
		m_sloty = ny;
	}
}
//set selected slot to mouse pos

selected_slot = min(inv_slots-1, m_slotx + (m_sloty * inv_slots_width));
#endregion

//pickup Item
var inv_grid = ds_inventory;
var ss_item = inv_grid[# 0, selected_slot]; //selected slot item
if(pickup_slot != -1)
{
	if(mouse_check_button_pressed(mb_left))
	{
		if(ss_item == items.none)
		{
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = items.none;
			inv_grid[# 1, pickup_slot] = 0;
			
			pickup_slot = -1;
		}
		else if(ss_item == inv_grid[# 0, pickup_slot])
		{
			if(selected_slot != pickup_slot)
			{
				inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot];
			
				inv_grid[# 0, pickup_slot] = items.none;
				inv_grid[# 1, pickup_slot] = 0;
			}
			pickup_slot = -1;
		}
		else
		{
			var ss_item_num = inv_grid[# 1, selected_slot];
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = ss_item;
			inv_grid[# 1, pickup_slot] = ss_item_num;
			//pickup_slot = -1; commenting out this line makes it so that if i put an item on to a diffrent item it will swap and we will pick up the new item 
		}
	}
}
else if(ss_item != items.none)
{
	if(mouse_check_button_pressed(mb_left))
	{
		pickup_slot = selected_slot;
	
	}
}
