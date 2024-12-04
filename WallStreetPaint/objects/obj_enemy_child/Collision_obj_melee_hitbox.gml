/// @description Insert description here
// You can write your code in this editor

effect_create_above(ef_explosion, x, y, 0.25, c_green);

direction = random(360);

//White flash timer
flash_timer = flash_duration;

instance_destroy();
obj_game_1.points += 50;

