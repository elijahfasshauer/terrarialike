depth = -1;
inv_ui = spr_inv_ui; //makes the sprite a var
inv_items = spr_inv_items; //makes the sprite a var
cellsize = 32;

inv_slots = 17;
inv_slots_width = 8;
inv_slots_height = 3;

x_buffer = 2;
y_buffer = 4;

spr_inv_cols = sprite_get_width(inv_items) / cellsize;
spr_inv_rows = sprite_get_height(inv_items) / cellsize;

scale = 1;

show_inventory = false;



gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

inv_ui_width = 288;
inv_ui_height = 192;



inv_ui_x = (gui_width *.5) - (inv_ui_width *.5 *scale);
inv_ui_y = (gui_height *.5) - (inv_ui_height *.5 *scale);


info_x = inv_ui_x + (9*scale);
info_y = inv_ui_y + (9*scale);

slots_x = info_x;
slots_y = info_y + (40*scale);

//-----player info-------\\

ds_player_info = ds_grid_create(2,2);

//***********Inventory Items*************\\
//col 0 = item
//col 1 = #

ds_inventory = ds_grid_create(2, inv_slots);
enum items 
{
	none		= 0,
	dirt		= 1,
	stone       = 2,
	bedrock     = 3,
	wood        = 4,
	leaves      = 5,
	test        = 6,
	height      = 7, //this one just tells us how many are in the Enum when adding more keep this at the bottom
	
	
	
}

var yy=0;
repeat(inv_slots)
{
	ds_inventory[# 0 , yy] = irandom_range(1, items.height - 1);
	ds_inventory[# 1 , yy] = irandom_range(1,10);
	
	
	yy+=1;
}
