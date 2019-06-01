xx=argument0
yy=argument1

switch ds_grid_get(gen.world_block,xx,yy)
{
	case 1: 
	instance_create_depth(xx*13,yy*13,0,obj_block_parent);
	break;
				
	case 2: 
	instance_create_depth(xx*13,yy*13,0,obj_block_2);
	break;
				
	case 3: 
	instance_create_depth(xx*13,yy*13,0,obj_block_3);
	break;
				
	case 4: 
	instance_create_depth(xx*13,yy*13,0,obj_block_4);
	break;
				
	case 5: 
	instance_create_depth(xx*13,yy*13,0,obj_block_5);
	break;
				
	case 6: 
	instance_create_depth(xx*13,yy*13,0,obj_block_6);
	break;
}