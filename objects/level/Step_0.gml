/// @description Day
time+=1;
if time=day_time
{
	day+=1;
	time=0;
}


if time>=day_time/2 && time<=day_time/2+tran
{
	layer_background_blend(back,make_color_rgb(0,0,255-(((time-(day_time/2))/tran)*255)));
}
if time>=0 && time<=tran
{
	layer_background_blend(back,make_color_rgb(0,0,(time/tran)*255));
}
