/// @description Generate the world

//The blocks are 13 pixels for now :)
b_w = 13;
width = room_width/b_w;
height = room_height/b_w;

//Set up a 2D array
//This var will store the type of block and where it is in the world
var world_block;
world_block = ds_grid_create(width+1, height+1);
//This var will store where the very top of the terrain is at, for simplicity later on
var world_top;
world_top = ds_grid_create(width+1, 1);

//Each block will have a value, starting with 1. 0 will be air.


//These will be the vars to place blocks and values into the array using "for" statements
var xx;
var yy;
xx = 0;
yy = 0;

//Make the starting height for the top of the terrain at the middle of the height of the world
var top_height;
top_height = round(height/2);
var add_height;
add_height = 0;
var add_prev;
add_prev = 0;

//Generate terrain
for (xx=0;xx<=width;xx++) 
{
	//Make all blocks air, so theres at least some value in every coord
	for (yy=0;yy<=height;yy++) 
	{
		ds_grid_add(world_block,xx,yy,0)
	}
	//Set the top of terrain
	add_height=choose(choose(-2,-1,-1,0,0,0,0,0,0,0,0,0,0,1,1,2),add_prev,add_prev)
	
	top_height+=add_height
	ds_grid_set(world_block,xx,top_height,1)
	ds_grid_set(world_top,xx,0,top_height)
	add_prev=add_height
}
//Perlin noise stranded values suicide (makes the odd blocks disappear)

for (xx=0;xx<=width;xx++) {
	//Check left of top of terrain
	if world_block[# xx-1,world_top[# xx,0]]=0 {
		
		//Check to the right
		if world_block[# xx+1,world_top[# xx,0]]=0 {
			
			//Check to the top left
			if world_block[# xx-1,world_top[# xx,0]-1]=0 {
				
				//Check to the top right
				if world_block[# xx+1,world_top[# xx,0]-1]=0 {
					
					//Check to the top top left (2 above)
					if world_block[# xx-1,world_top[# xx,0]-2]=0 {
						
						//Check to the top top right (2 above)
						if world_block[# xx+1,world_top[# xx,0]-2]=0 {
							
							//If there is air all around the top of the block, it will move down one to fit in better
							world_top[# xx,0]+=1
							world_block[# xx,world_top[# xx,0]-1]=0
							world_block[# xx,world_top[# xx,0]]=1
							world_block[# xx,world_top[# xx,0]-5]=1
							
						}
					}
				}
			}
			
			/*
			//Check to the bottom left
			if world_block[# xx-1,world_top[# xx,0]+1]=0 {
				//Check to the bottom right
				if world_block[# xx+1,world_top[# xx,0]+1]=0 {
					//Check to the bottom left
					if world_block[# xx-1,world_top[# xx,0]+2]=0 {
						//Check to the bottom right
						if world_block[# xx+1,world_top[# xx,0]+2]=0 {
							//If there is air all around the bottom of the block, it will move up one to fit in
							world_top[# xx,0]-=1
							world_block[# xx,world_top[# xx,0]+7]=1
						}
					}
				}
			}*/
		}
	}
}



//Render objects into world

for (xx=0;xx<=width;xx++) {
	for (yy=0;yy<=height;yy++) {
		if ds_grid_get(world_block,xx,yy)=1 {
			instance_create_depth(xx*13,yy*13,0,obj_block_parent)
		}
	}
}

