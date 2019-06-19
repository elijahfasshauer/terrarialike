//The script will decide the conditions that are met and what enemies to spawn 

random_enemy=irandom(1)
switch random_enemy
{
	case 0: 
	enemy=obj_enemy_wormy
	break;
	case 1:
	enemy=obj_enemy_big_wormy_head
	break;
}

return enemy;
