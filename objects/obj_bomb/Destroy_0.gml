/// @description Insert description here
// You can write your code in this editor

owner.bombs--;
for (angle = 0; angle < 360; angle += 90) {
	next = instance_create_layer(x,y,"vfx",obj_explosion);
	next.range = range;
	next.direction = angle;
	next.spike = spike;
}