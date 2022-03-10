/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

 left = keyboard_check(vk_numpad4) || gamepad_button_check(1, gp_padl) || gamepad_button_check(4, gp_padl);
right = keyboard_check(vk_numpad6) || gamepad_button_check(1, gp_padr) || gamepad_button_check(4, gp_padr);
   up = keyboard_check(vk_numpad8) || gamepad_button_check(1, gp_padu) || gamepad_button_check(4, gp_padu);
 down = keyboard_check(vk_numpad5) || gamepad_button_check(1, gp_padd) || gamepad_button_check(4, gp_padd);
 
bomb = keyboard_check_pressed(vk_numpad0) || gamepad_button_check_pressed(1, gp_face1) || gamepad_button_check_pressed(4, gp_face1);;

event_inherited();