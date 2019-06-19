return_item=0;

switch (argument0)
{
	//Dirt
	case 1:
	case 2:
	case 3:
	case 4:
	return_item=1;
	break;
	//Stone
	case 5:
	case 9:
	return_item=2;
	break;
	//Bedrock
	case 6:
	return_item=3;
	break;
	//Tree trunk
	case 7:
	return_item=4;
	break;
	//Leaves
	case 8:
	return_item=5
	break;

	
}
return return_item;