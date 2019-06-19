/// @description Insert description here
// You can write your code in this editor
width=camera_get_view_width(view_camera[0]);
height=camera_get_view_height(view_camera[0]);
time_ratio=((time-(tran/2))/((day_time/2)+(tran/2)))
add_x=time_ratio*width;
add_y=time_ratio*height
draw_sprite(spr_sun,0,player.x-512+add_x,player.y-384+((sin((.002*pi*(add_y))-(2.5*pi))*-10)));