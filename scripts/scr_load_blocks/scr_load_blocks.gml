xx=argument0
yy=argument1

switch ds_grid_get(gen.world_block,xx,yy)
{
	case 1: 
	instance_create_depth(xx*gen.b_w,yy*gen.b_w,0,obj_block_parent);
	break;
				
	case 2: 
	instance_create_depth(xx*gen.b_w,yy*gen.b_w,0,obj_block_2);
	break;
				
	case 3: 
	instance_create_depth(xx*gen.b_w,yy*gen.b_w,0,obj_block_3);
	break;
	
	case 4: 
	instance_create_depth(xx*gen.b_w,yy*gen.b_w,0,obj_block_4);
	break;
	//Stone
	case 5: 
	instance_create_depth(xx*gen.b_w,yy*gen.b_w,0,obj_block_5);
	break;
	//Bedrock
	case 6: 
	instance_create_depth(xx*gen.b_w,yy*gen.b_w,0,obj_block_6);
	break;
	//Trunk
	case 7: 
	instance_create_depth(xx*gen.b_w,yy*gen.b_w,0,obj_back_parent);
	break;
	//Leaves
	case 8: 
	instance_create_depth(xx*gen.b_w,yy*gen.b_w,0,obj_back_1);
	break;
	//Rock
	case 9: 
	instance_create_depth(xx*gen.b_w,yy*gen.b_w,0,obj_back_2);
	break;
	
}