/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 0.25, c_yellow);

direction = random(360);

instance_destroy();
obj_game_1.points += 50;

