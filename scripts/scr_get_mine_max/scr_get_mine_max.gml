///Each block has a different time it takes to mine, and so this script will return a number for the the amount 
//   of time it takes to mine

//time is in 1/60th of a second
return_block=0;

switch (argument0)
{
	case 1:
	case 2:
	case 3:
	case 4:
	return_block=30
	break;
	
	case 5:
	return_block=60
	break;
	
	case 6:
	return_block=120
	break;
	
	
}