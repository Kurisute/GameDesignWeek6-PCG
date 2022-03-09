/// @description Insert description here
// You can write your code in this editor

for (angle = 0; angle < 360; angle += 90) {
	next = instance_create_layer(x,y,"instances",obj_explosion);
	next.range = range;
	next.direction = angle;
}
instance_destroy();