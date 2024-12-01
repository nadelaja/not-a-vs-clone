/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

instance_destroy();
obj_game_1.points += 50;

