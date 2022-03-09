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
	// if (y mod 32 < 8) y++;
	// else if (y mod 32 > 24) y--;
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

if (bomb && bombs < bombmax) {
	bombs++;
	newbomb = instance_create_layer((x div 32) * 32, (y div 32) * 32, "instances", obj_bomb);
	newbomb.range = range;
	newbomb.owner = self;
}