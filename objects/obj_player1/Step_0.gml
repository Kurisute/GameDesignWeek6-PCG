/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

 left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
   up = keyboard_check(ord("W"));
 down = keyboard_check(ord("S"));
 
bomb = keyboard_check_pressed(ord("F"));

event_inherited();

// Change sprite by movement
if(walking){
	switch (face){
		case SOUTH: sprite_index = spr_Player_walkdown; break;
		case NORTH: sprite_index = spr_Player_walkup; break;
		case EAST: sprite_index = spr_Player_walkright; break;
		case WEST: sprite_index = spr_Player_walkleft; break;
	}
}else{
	switch (face){
		case SOUTH: sprite_index = spr_Player_down; break;
		case NORTH: sprite_index = spr_Player_up; break;
		case EAST: sprite_index = spr_Player_right; break;
		case WEST: sprite_index = spr_Player_left; break;
	}
}