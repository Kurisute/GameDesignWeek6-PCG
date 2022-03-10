/// @description Insert description here
// You can write your code in this editor

owner.bombs--;
audio_play_sound(snd_explosion,0,0);
for (angle = 0; angle < 360; angle += 90) {
	next = instance_create_layer(x,y,"vfx",obj_explosion);
	next.range = range;
	next.direction = angle;
	next.spike = spike;
}