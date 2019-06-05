/// @description Load Chunks nearby
//Variables
chunk_in_x=floor(x/13/ch_s);
chunk_in_y=floor(y/13/ch_s);


//if chunk x he's in has changed
if chunk_in_x!=chunk_in_x_prev or chunk_in_y!=chunk_in_y_prev 
{
	//If a whole chunk away from where it loaded last
	if abs(chunk_in_x-chunk_loaded_in_x) >= 2 or abs(chunk_in_y-chunk_loaded_in_y) >= 2
	{
		loaded=false;
	}
	
	
	if loaded=false 
	{
		//Delete existing blocks
		with(obj_destroy_parent) 
		{
			instance_destroy()
		}
		
		
		if chunk_in_x > 1 && chunk_in_x < max_ch_x-2   //Not at the very left of world
		{ 
			for(xx=(chunk_in_x-2)*ch_s;xx<(chunk_in_x+2)*ch_s+ch_s;xx++) 
			{
				scr_load_chunks()
			}
		} 
		else if chunk_in_x<=1            //If at the left
		{
			for(xx=0;xx<(chunk_in_x+2)*ch_s+ch_s;xx++) 
			{
				scr_load_chunks()
			}
		} 
		else //if at the right
		{
			for(xx=(chunk_in_x-2)*ch_s;xx<=gen.width;xx++) 
			{
				scr_load_chunks()
			}
		}
		
	}
}


//Previous chunk
chunk_in_x_prev=chunk_in_x;
chunk_in_y_prev=chunk_in_y;












