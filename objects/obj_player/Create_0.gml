/// @description Insert description here
// You can write your code in this editor

up = 0;
down = 0;
left = 0;
right = 0;
face = SOUTH;
walking = false;

bomb = 0;

bombs = 0;
sp = 3;
range = 2;
bombmax = 1;
spike = false;

HP = 1;
HP_lock = false;

walkup = sprite_index;
walkdown = sprite_index;
walkleft = sprite_index;
walkright = sprite_index;
faceup = sprite_index;
facedown = sprite_index;
faceleft = sprite_index;
faceright = sprite_index;

image_speed = sp * 0.05;

speedup = 0;
rangeup = 0;
bombsup = 0;