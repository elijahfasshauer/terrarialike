/// @description Insert description here
// You can write your code in this editor

//Make screen size right
w=surface_get_width(application_surface);
h=surface_get_height(application_surface);
camera_set_view_size(view_camera[0],w,h);
surface_resize(application_surface, display_get_gui_width(), display_get_gui_height());
view_set_wport(view_camera[0],display_get_gui_width());
view_set_hport(view_camera[0],display_get_gui_height());