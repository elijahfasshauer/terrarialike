if(keyboard_check_pressed(ord("E")))
{
	show_inventory = !show_inventory;
}


if(!show_inventory) 
{
	exit;
}


mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cellsize+x_buffer)*scale;
var cell_ybuff = (cellsize+y_buffer)*scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;

m_slotx = nx;
m_sloty = ny;

//set selected slot to mouse pos
if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height and i_mousey > 0 and i_mousex > 0)
selected_slot = m_slotx + (m_sloty * inv_slots_width);
