/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

 left = keyboard_check(ord("J")) || gamepad_button_check(0, gp_padl) || gamepad_button_check(5, gp_padl);
right = keyboard_check(ord("L")) || gamepad_button_check(0, gp_padr) || gamepad_button_check(5, gp_padr);
   up = keyboard_check(ord("I")) || gamepad_button_check(0, gp_padu) || gamepad_button_check(5, gp_padu);
 down = keyboard_check(ord("K")) || gamepad_button_check(0, gp_padd) || gamepad_button_check(5, gp_padd);
 
bomb = keyboard_check_pressed(186) || gamepad_button_check_pressed(0, gp_face1) || gamepad_button_check_pressed(5, gp_face1);;

event_inherited();