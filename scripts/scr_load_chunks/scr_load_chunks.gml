if chunk_in_y>1 && chunk_in_y<max_ch_y-1 //Not at the very top of the world
{
	for(yy=(chunk_in_y-2)*ch_s;yy<(chunk_in_y+2)*ch_s+ch_s;yy++) 
	{
		scr_load_blocks(xx,yy);
		loaded=true;
		chunk_loaded_in_x=chunk_in_x;
		chunk_loaded_in_y=chunk_in_y;
	}
} 
else if chunk_in_y<=1 //If at top
{
	for(yy=0;yy<(chunk_in_y+2)*ch_s+ch_s;yy++) 
	{
		scr_load_blocks(xx,yy);
		loaded=true;
		chunk_loaded_in_x=chunk_in_x;
		chunk_loaded_in_y=chunk_in_y;
	}
} 
else //If at bottom
{
	for(yy=(chunk_in_y-2)*ch_s;yy<=gen.height;yy++) 
	{
		scr_load_blocks(xx,yy);
		loaded=true;
		chunk_loaded_in_x=chunk_in_x;
		chunk_loaded_in_y=chunk_in_y;
	}
}