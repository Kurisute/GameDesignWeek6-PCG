/// @description Insert description here
// You can write your code in this editor

if (range > 0) {
	next = instance_create_layer(x,y,"instances",obj_explosion);
	next.range = range - 1;
	next.x += lengthdir_x(32, direction);
	next.y += lengthdir_y(32, direction);
	next.direction = direction;
}