/// @ Add 1 more bomb limit to Player
if (other.HP >= 0) {
other.bombmax++;
other.bombsup++;

// Inherit the parent event
event_inherited();
}