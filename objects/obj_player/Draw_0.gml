/// @description Insert description here
// You can write your code in this editor

// Change sprite by movement
if(walking){
	switch (face){
		case SOUTH: draw_sprite(walkdown, -1, x, y); break;
		case NORTH: draw_sprite(walkup, -1, x, y); break;
		case EAST: draw_sprite(walkright, -1, x, y); break;
		case WEST: draw_sprite(walkleft, -1, x, y); break;
	}
}else{
	switch (face){
		case SOUTH: draw_sprite(facedown, -1, x, y); break;
		case NORTH: draw_sprite(faceup, -1, x, y); break;
		case EAST: draw_sprite(faceright, -1, x, y); break;
		case WEST: draw_sprite(faceleft, -1, x, y); break;
	}
}