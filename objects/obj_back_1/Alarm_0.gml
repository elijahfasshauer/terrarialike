/// @description Insert description here
// You can write your code in this editor

if image_index=0
{
	image_index=choose(1,2)
}
else 
{
	image_index=0
}
if level.wind=false
{
	alarm[0]=irandom(100)
}
else
{
	alarm[0]=1
}