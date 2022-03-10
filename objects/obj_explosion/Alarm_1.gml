/// @description Insert description here
// You can write your code in this editor

if (range > 0) {
	next = instance_create_layer(x,y,"vfx",obj_explosion);
	next.range = range - 1;
	next.x += lengthdir_x(32, direction);
	next.y += lengthdir_y(32, direction);
	next.direction = direction;
	next.spike = spike;
}

switch (direction){
	case 0: sprite_index = spr_explosion_right; break;
	case 90: sprite_index = spr_explosion_up; break;
	case 180: sprite_index = spr_explosion_left; break;
	case 270: sprite_index = spr_explosion_down; break;
}
