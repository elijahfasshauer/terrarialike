/// @description Insert description here
// You can write your code in this editor
add_x=((time-(tran/2))/((day_time/2)+(tran/2)))*(camera_get_view_width(view_camera[0]))
draw_sprite(spr_sun,0,camera_get_view_x(view_camera[0])+add_x,camera_get_view_y(view_camera[0]))