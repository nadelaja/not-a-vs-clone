/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(!red_weapon_hit){
	red_weapon_hit = true;
	alarm[1] = room_speed;
	
	boss_HP -= 100;
}

if (boss_HP <= 0){ 
	effect_create_above(ef_explosion, x, y, 0.25, #df5726);
	instance_destroy();
} else {
	//White flash timer
	flash_timer = flash_duration;
}

direction = random(360);
