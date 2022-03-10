/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_white);
draw_set_font(Font1);
draw_set_halign(fa_center);

if (global.living <= 1) {
	draw_text(464,696,"WINNER!\nPress R to Restart");
}