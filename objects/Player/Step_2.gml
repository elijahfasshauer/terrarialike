/// @description Load Chunks nearby
//Variables
chunk_in_x=floor(x/13/ch_s);
chunk_in_y=floor(y/13/ch_s);



if chunk_in_x!=chunk_in_x_prev
{
	with(obj_block_parent) 
	{
		instance_destroy()
	}
	for(xx=chunk_in_x*ch_s;xx<chunk_in_x*ch_s+ch_s;xx++) 
	{
		for(yy=100;yy<gen.height;yy++) {
			scr_load_blocks(xx,yy)
		}
	}
	
}












//Previous chunk
chunk_in_x_prev=chunk_in_x;
chunk_in_y_prev=chunk_in_y;