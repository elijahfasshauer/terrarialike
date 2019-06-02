/// @description Load Chunks nearby
//Variables
chunk_in_x=floor(x/13/ch_s);
chunk_in_y=floor(y/13/ch_s);


//if chunk x he's in has changed
if chunk_in_x!=chunk_in_x_prev or chunk_in_y!=chunk_in_y_prev 
{
	//If a whole chunk away from where it loaded last
	if abs(chunk_in_x-chunk_loaded_in_x) >= 2 
	{
		loaded=false;
	}
	if abs(chunk_in_y-chunk_loaded_in_y) >=2
	{
		loaded=false;
	}
	
	
	if loaded=false 
	{
		with(obj_block_parent) 
		{
			instance_destroy()
		}
		if chunk_in_x>1  //Not at the very left of world
		{ 
			for(xx=(chunk_in_x-2)*ch_s;xx<(chunk_in_x+2)*ch_s+ch_s;xx++) 
			{
				for(yy=(chunk_in_y-2)*ch_s;yy<(chunk_in_y+2)*ch_s+ch_s;yy++) 
				{
					scr_load_blocks(xx,yy);
					loaded=true;
					chunk_loaded_in_x=chunk_in_x;
					chunk_loaded_in_y=chunk_in_y;
				}
			}
		} 
		else             //If more to the left
		{
			for(xx=0;xx<(chunk_in_x+2)*ch_s+ch_s;xx++) 
			{
				for(yy=(chunk_in_y-2)*ch_s;yy<(chunk_in_y+2)*ch_s+ch_s;yy++) 
				{
					scr_load_blocks(xx,yy);
					loaded=true;
					chunk_loaded_in_x=chunk_in_x;
					chunk_loaded_in_y=chunk_in_y;
				}
			}
		} 
	}
}













//Previous chunk
chunk_in_x_prev=chunk_in_x;
chunk_in_y_prev=chunk_in_y;