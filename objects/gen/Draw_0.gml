/// @description Insert description here
// You can write your code in this editor

//Vertical lines
var width
width=room_width/26
var h
h=0
for(h=0;h<width;h++) {
	draw_line(h*26,0,h*26,room_height)
}

//Horizontal lines
var height
height=room_height/26
var w
w=0
for(w=0;w<height;w++) {
	draw_line(0,w*26,room_width,w*26)
}