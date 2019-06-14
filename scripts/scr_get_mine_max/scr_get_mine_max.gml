///Each block has a different time it takes to mine, and so this script will return a number for the the amount 
//   of time it takes to mine

//time is in 1/60th of a second
return_block=0;

switch (argument0)
{
	//Dirt
	case 1:
	case 2:
	case 3:
	case 4:
	return_block=1;
	break;
	//Stone
	case 5:
	case 9:
	return_block=60;
	break;
	//Bedrock
	case 6:
	return_block=120;
	break;
	//Tree trunk
	case 7:
	return_block=60;
	break;
	//Leaves
	case 8:
	return_block=10
	break;

	
}
return return_block;