/// @description Insert description here
// You can write your code in this editor
width=camera_get_view_width(view_camera[0]);
height=camera_get_view_height(view_camera[0]);
time_ratio=(time-(day_time/12))/((day_time/3));
add_x=time_ratio*(width*1.04125);
time_ratio_moon=(time-(day_time/2)-(day_time/12))/(((day_time/3)));
add_x_moon=time_ratio_moon*(width*1.04125);;
if obj_camera.view=1 
{
	draw_sprite(spr_sun,0,player.x-(width/2)+add_x,sin(((2*pi)/(width))*add_x+((1.5)*pi))*-60+player.y-100);
	draw_sprite(spr_moon,0,player.x-(width/2)+add_x_moon,sin(((2*pi)/(width))*add_x+(day_time/2)+((3.1)*pi))*-60+player.y-100);
}
