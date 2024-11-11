/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_yellow);

direction = random(360);

if sprite_index == spr_rock_big
{
        sprite_index = spr_rock_small;
        instance_copy(true);
}
else if instance_number(obj_rock_small) <  4
{
        sprite_index = spr_rock_small
        x = -100;
}
else
{
        instance_destroy();
}

obj_game.points += 50;