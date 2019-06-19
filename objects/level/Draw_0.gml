/// @description Insert description here
// You can write your code in this editor
width=camera_get_view_width(view_camera[0]);
height=camera_get_view_height(view_camera[0]);
time_ratio=(time-(day_time/6))/((day_time/3))
add_x=time_ratio*width;
add_y=time_ratio*height
time_ratio_moon=(time-(day_time/2)-(day_time/6))/(((day_time/3)))
add_x_moon=time_ratio_moon*width+100
add_y_moon=time_ratio_moon*height
draw_text(player.x-300,player.y-100,string(add_x_moon)+" "+string(add_y_moon))
draw_sprite(spr_sun,0,player.x-512+add_x,player.y-384+((sin(((1.43/width)*pi*(add_y))-(2*pi))*-60)+200));
draw_sprite(spr_moon,0,player.x-512+add_x_moon,player.y-384+((sin(((1.43/width)*pi*(add_y_moon))-(2*pi))*-60)+200));