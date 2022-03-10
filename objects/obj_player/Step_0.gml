/// @description Insert description here
// You can write your code in this editor
xsnap = (x div 32) * 32;
ysnap = (y div 32) * 32
if (HP >= 0) {

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
		if (vvec == 0) {
			if (position_meeting(x + 16 * hvec, y + 16, obj_wall) && !position_meeting(x + 16 * hvec, y - 16, obj_wall) && !position_meeting(x, y - 16, obj_wall)) {
				vsp -= 2;
			} else if (position_meeting(x + 16 * hvec, y - 16, obj_wall) && !position_meeting(x + 16 * hvec, y + 16, obj_wall) && !position_meeting(x, y + 16, obj_wall)) {
				vsp += 2;
			}
		}
	}


	// vertical collision
	if (place_meeting(x, y + vsp, obj_wall)) {
		while (!place_meeting(x, y + sign(vsp), obj_wall)) {
			y += sign(vsp);
		}
		vsp = 0;
		if (hvec == 0) {
			if (position_meeting(x + 16, y + 16 * vvec, obj_wall) && !position_meeting(x - 16, y + 16 * vvec, obj_wall) && !position_meeting(x - 16, y, obj_wall)) {
				hsp -= 2;
			} else if (position_meeting(x - 16, y + 16 * vvec, obj_wall) && !position_meeting(x + 16, y + 16 * vvec, obj_wall) && !position_meeting(x + 16, y, obj_wall)) {
				hsp += 2;
			}
		}
	}

	bombcolx = instance_place(x + hsp, y, obj_bomb);
	if (bombcolx != noone && !bombcolx.intangible) {
		while (!place_meeting(x + sign(hsp), y, obj_bomb)) {
			x += sign(hsp);
		}
		hsp = 0;
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
		audio_play_sound(snd_place, 0, 0);
		newbomb = instance_create_layer((x div 32) * 32, (y div 32) * 32, "instances", obj_bomb);
		newbomb.range = range;
		newbomb.owner = self;
		if (spike) {
			newbomb.spike = true;
			newbomb.sprite_index = spr_bomb_spike;
		}
	}

	if (position_meeting(x, y, obj_explosion) && !HP_lock) {
		audio_play_sound(snd_hit, 0, 0);
		HP -= 1;
		if (HP == -1) {
			global.living--;
			instance_create_layer(xsnap, ysnap, "items", obj_Burger);
		}
		HP_lock = true;
	}

	// Set HP_lock
	if (HP_lock) {
		if (alarm[0] == -1)
			alarm[0] = 150;
		if (alarm[0] > 1 and alarm[0] % 2 != 0) {
			visible = false;
		} else {
			visible = true;
		}
	}


	if (HP == 0 && global.timer mod 6 == 0) {
		smoke = instance_create_layer(x, y, "vfx", obj_smoke);
		smoke.direction = random(360);
		smoke.speed = random_range(1, 1.5);
	}

	/*
	if (HP == 0 && global.timer div 2 mod 2 != 0) {
		image_blend = c_red;
	} else {
		image_blend = c_white;
	}
	*/


	// Change face and walking status
	if (vvec == 1) {
		face = SOUTH;
		walking = true;
	} else if (vvec == -1) {
		face = NORTH;
		walking = true;
	} else if (hvec == 1) {
		face = EAST;
		walking = true;
	} else if (hvec == -1) {
		face = WEST;
		walking = true;
	} else {
		walking = false;
	}
} else {


	if (speedup > 0) {
		speedup--;
		itemdrop = instance_create_layer(xsnap, ysnap, "items", obj_Boots);
		itemdrop.bounce = true;
	}

	if (bombsup > 0) {
		bombsup--;
		itemdrop = instance_create_layer(xsnap, ysnap, "items", obj_BombPlus);
		itemdrop.bounce = true;
	}

	if (rangeup > 0) {
		rangeup--;
		itemdrop = instance_create_layer(xsnap, ysnap, "items", obj_Power);
		itemdrop.bounce = true;
	}
	if (spike) {
		itemdrop = instance_create_layer(xsnap, ysnap, "items", obj_SpikeBombs);
		itemdrop.bounce = true;
	}

}