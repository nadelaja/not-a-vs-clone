/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
instance_destroy(other);

HP -= 75;

if (HP <= 0){ 
	effect_create_above(ef_explosion, x, y, 0.25, #8bd8ff);
	instance_destroy();
} else {
	//White flash timer
	flash_timer = flash_duration;
}

direction = random(360);

