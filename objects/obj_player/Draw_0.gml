/// @description Insert description here
// You can write your code in this editor

// Change sprite by movement
if (HP >= 0) {
	if(walking){
		switch (face){
			case SOUTH: draw_sprite_ext(walkdown, -1, x, y, 1, 1, 0, image_blend, 1); break;
			case NORTH: draw_sprite_ext(walkup, -1, x, y, 1, 1, 0, image_blend, 1); break;
			case EAST: draw_sprite_ext(walkright, -1, x, y, 1, 1, 0, image_blend, 1); break;
			case WEST: draw_sprite_ext(walkleft, -1, x, y, 1, 1, 0, image_blend, 1); break;
		}
	} else {
		switch (face){
			case SOUTH: draw_sprite_ext(facedown, -1, x, y, 1, 1, 0, image_blend, 1); break;
			case NORTH: draw_sprite_ext(faceup, -1, x, y, 1, 1, 0, image_blend, 1); break;
			case EAST: draw_sprite_ext(faceright, -1, x, y, 1, 1, 0, image_blend, 1); break;
			case WEST: draw_sprite_ext(faceleft, -1, x, y, 1, 1, 0, image_blend, 1); break;
		}
	}
}