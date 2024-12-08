/// @description Insert description here
// You can write your code in this editor

if (cooldown_timer > 0) {
	cooldown_timer--;
	alarm_set(3, 60);
} else {
	areaAttack_cooldown = false;
}