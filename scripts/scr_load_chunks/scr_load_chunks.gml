


if player.chunk_in_y>1 && player.chunk_in_y<max_ch_y-1 //Not at the very top of the world
{
	for(yy=(player.chunk_in_y-2)*player.ch_y;yy<(player.chunk_in_y+2)*player.ch_y+player.ch_y;yy++) 
	{
		scr_load_blocks(xx,yy);
		player.loaded=true;
		player.chunk_loaded_in_x=player.chunk_in_x;
		player.chunk_loaded_in_y=player.chunk_in_y;
	}
} 
else if chunk_in_y<=1 //If at top
{
	for(yy=0;yy<(player.chunk_in_y+2)*player.ch_y+player.ch_y;yy++) 
	{
		scr_load_blocks(xx,yy);
		player.loaded=true;
		player.chunk_loaded_in_x=player.chunk_in_x;
		player.chunk_loaded_in_y=player.chunk_in_y;
	}
} 
else //If at bottom
{
	for(yy=(player.chunk_in_y-2)*player.ch_y;yy<=global.height;yy++) 
	{
		scr_load_blocks(xx,yy);
		player.loaded=true;
		player.chunk_loaded_in_x=player.chunk_in_x;
		player.chunk_loaded_in_y=player.chunk_in_y;
	}
}