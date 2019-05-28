/// @description Insert description here
// You can write your code in this editor

//Block width
var b_w;
b_w = 13;

//Vertical lines
var width;
width = room_width/b_w;
var h;
h=0;
for(h=0; h<width; h++) 
{
	draw_line(h*b_w, 0, h*b_w, room_height)
}

//Horizontal lines
var height;
height = room_height/b_w;
var w;
w = 0;
for(w = 0; w<height; w++)
{
	draw_line(0, w*b_w, room_width, w*b_w);
}