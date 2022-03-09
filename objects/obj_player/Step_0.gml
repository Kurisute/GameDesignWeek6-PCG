/// @description Insert description here
// You can write your code in this editor

// === Input Handling ===
// conversion to numpad notation
dir = 5;
if (left && !right) dir = 4;
else if (right && !left) dir = 6;
if (up && !down) dir += 3;
else if (down && !up) {
    dir -= 3;
}

// for aiming, does not affect own movement

if (!in_dash) {
    switch (dir) {
    case 1:
        direction = 225;
        hvec = -1;
        facing = -1;
        rotation = direction;
        break;
    case 2:
        direction = 270;
        hvec = 0;
        rotation = direction;
        break;
    case 3:
        direction = 315;
        hvec = 1;
        facing = 1;
        rotation = direction;
        break;
    case 4:
        direction = 180;
        hvec = -1;
        facing = -1;
        rotation = direction;
        break;
    case 5:
        if (facing <= 0) direction = 180;
        else direction = 0;
        hvec = 0;
        rotation = direction;
        break;
    case 6:
        direction = 0;
        hvec = 1;
        facing = 1;
        rotation = direction;
        break;
    case 7:
        direction = 135;
        hvec = -1;
        facing = -1;
        rotation = direction;
        break;
    case 8:
        direction = 90;
        hvec = 0;
        rotation = direction;
        break;
    case 9:
        direction = 45;
        hvec = 1;
        facing = 1;
        rotation = direction;
        break;
    }
}