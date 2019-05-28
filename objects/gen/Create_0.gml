/// @description Generate the world

//The blocks are 26 pixels for now :)
var width
var height
width=room_width/26
height=room_height/26

//Set up a 2D array
var world_block
world_block=ds_grid_create(width+1,height+1) 

//Each block will have a value, starting with 1. 0 will be air.


//These will be the vars to place blocks and values into the array using "for" statements
var xx
var yy
xx=0
yy=0

//Make the starting height for the top of the terrain at the middle of the height of the world
var top_height
top_height=round(height/2)
var add_height
add_height=0
var add_prev
add_prev=0

//Generate terrain
for (xx=0;xx<=width;xx++) {
	//Make all blocks air, so theres at least some value in every coord
	for (yy=0;yy<=height;yy++) {
		ds_grid_add(world_block,xx,yy,0)
	}
	add_height=choose(0,1,-1,0,1,-1,2,-2,add_prev,add_prev,add_prev)
	
	top_height+=add_height
	ds_grid_set(world_block,xx,top_height,1)
	add_prev=add_height
}



//Render objects into world

for (xx=0;xx<=width;xx++) {
	for (yy=0;yy<=height;yy++) {
		if ds_grid_get(world_block,xx,yy)=1 {
			instance_create_depth(xx*26,yy*26,0,obj_block_parent)
		}
	}
}

