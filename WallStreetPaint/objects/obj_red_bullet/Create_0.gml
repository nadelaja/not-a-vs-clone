/// @description Insert description here
// You can write your code in this editor
image_index = 1;
image_xscale *= (1.3 + obj_player_1.current_level * 0.2);
image_yscale *= (1 + obj_player_1.current_level * 0.8);
speed = 4.8 + obj_player_1.current_level * 0.8;
direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction + 90;

alarm[1] = 4;