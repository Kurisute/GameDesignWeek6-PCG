/// @description Insert description here
// You can write your code in this editor
if (x < 0 || x >= room_width || y < 0 || y >= room_height) {
	x = x mod room_width;
	y = y mod room_height;
}