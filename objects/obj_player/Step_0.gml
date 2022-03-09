/// @description Insert description here
// You can write your code in this editor

// === Input Handling ===
hvec = right - left;
vvec = down - up;

hsp = hvec * sp;
vsp = vvec * sp;

// horizontal collision
if (place_meeting(x + hsp, y, obj_wall)) {
	while (!place_meeting(x + sign(hsp), y, obj_wall)) {
		x += sign(hsp);
	}
	hsp = 0;

}

// vertical collision
if (place_meeting(x, y + vsp, obj_wall)) {
	while (!place_meeting(x, y + sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;