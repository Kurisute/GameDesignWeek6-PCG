// change sprites
if walking{
	switch (face){
		case SOUTH: sprite_index = spr_Player_walkdown; break;
		case NORTH: sprite_index = spr_Player_walkup; break;
		case WEST: sprite_index = spr_Player_walkleft; break;
		case EAST: sprite_index = spr_Player_walkright; break;
	}
}
else{
	switch (face){
		case SOUTH: sprite_index = spr_Player_down; break;
		case NORTH: sprite_index = spr_Player_up; break;
		case WEST: sprite_index = spr_Player_left; break;
		case EAST: sprite_index = spr_Player_right; break;
	}
}

// Movement Control
