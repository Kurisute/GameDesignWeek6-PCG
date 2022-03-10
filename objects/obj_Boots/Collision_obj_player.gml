/// @description Add 0.5 speed to Player
if (other.HP >= 0) {
other.sp += 0.5;
other.speedup++;
// Inherit the parent event
event_inherited();
}