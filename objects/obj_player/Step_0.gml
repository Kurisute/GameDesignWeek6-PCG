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
bombcolx = instance_place(x + hsp, y, obj_bomb);
if (bombcolx != noone && !bombcolx.intangible) {
	while (!place_meeting(x + sign(hsp), y, obj_bomb)) {
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
bombcoly = instance_place(x, y + vsp, obj_bomb);
if (bombcoly != noone && !bombcoly.intangible) {
	while (!place_meeting(x, y + sign(vsp), obj_bomb)) {
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

// Set HP_lock
if(HP_lock){
	if(alarm[0] == -1)
		alarm[0] = 150;
	if(alarm[0] > 1 and alarm[0] % 2 != 0){
		visible = false;
	}
	else{
		visible = true;
	}
}

// Change face and walking status
if(vvec == 1){
	face = SOUTH;
	walking = true;
}else if (vvec == -1){
	face = NORTH;
	walking = true;
}else if(hvec == 1){
	face = EAST;
	walking = true;
}else if(hvec == -1){
	face = WEST;
	walking = true;
}else{
	walking = false;
}
