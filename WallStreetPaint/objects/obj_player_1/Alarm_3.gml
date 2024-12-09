/// @description Insert description here
// You can write your code in this editor
/*
if (cooldown_timer > 0) {
	cooldown_timer--;
	alarm_set(3, 60);
} else {
	areaAttack_cooldown = false;
} */

/// Alarm 3 event
if (areaAttack_cooldown_current > 0) {
    areaAttack_cooldown_current--;
    alarm_set(3, 1); // Reset alarm to trigger every frame
} else {
    areaAttack_cooldown = false;
    areaAttack_cooldown_current = 0;
}