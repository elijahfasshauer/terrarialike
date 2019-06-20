draw_set_halign(fa_left);


if(!show_inventory) 
{
	exit;
}

draw_sprite_part_ext(inv_ui, 0, cellsize, 0, inv_ui_width, inv_ui_height, inv_ui_x, inv_ui_y, scale, scale, c_white, 1);

var c = c_black;
ds_player_info[# 0, 0] = "Name";
ds_player_info[# 1, 0] = "player";

draw_text_color(info_x, info_y, ds_player_info[# 0, 0] + ": " + ds_player_info[# 1, 0], c,c,c,c,1);

//******inv
var ii, ix, xx, yy, iy, iitem, inv_grid, sx, sy;
ii = 0; //current item, the one that is going to be incromented
ix = 0; //the current x pos, 1-8
iy = 0; //the currest y pos 1-3
//iitem is the current item that we are on, the one we pull out of the grid
//sx = sprite x, sy = sprite y

inv_grid = ds_inventory;
repeat(inv_slots)
{
	//x,y locations for slots
	xx = ((cellsize + x_buffer)*ix*scale) + slots_x;
	yy = ((cellsize + y_buffer)*iy*scale) + slots_y;
	//item
	iitem = inv_grid[# 0, ii]; //names 
	sx = (iitem mod spr_inv_cols) * cellsize;
	sy = (iitem div spr_inv_cols) * cellsize;
	//draw slot and item
	
	draw_sprite_part_ext(
	inv_ui, 0,0,0, cellsize,cellsize, xx, yy, scale,scale,
	c_white, 1
	)
	
	switch(ii)
	{
		case selected_slot: 
			if(iitem > 0) 
			{
				draw_sprite_part_ext(
			inv_items, 0, sx, sy, cellsize, cellsize,
				xx, yy, scale, scale, c_white, 1
			);
			}
			gpu_set_blendmode(bm_add);
			draw_sprite_part_ext(
				inv_ui, 0,0,0, cellsize,cellsize, xx, yy, scale,scale,
				c_white, .3
			);
			gpu_set_blendmode(bm_normal);
		break;
		
		
		default:
			if(iitem > 0) 
			{
				draw_sprite_part_ext(
			inv_items, 0, sx, sy, cellsize, cellsize,
				xx, yy, scale, scale, c_white, 1
			);
			}
		break;
	}
	
	
	//draw item number
	if(iitem > 0) 
	{
		var number = inv_grid[# 1, ii];
		draw_text_color(xx,yy, string(number), c,c,c,c,1)
	}
	//increment
	ii+=1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}

