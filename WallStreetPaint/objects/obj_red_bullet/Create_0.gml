/// @description Insert description here
// You can write your code in this editor
image_index = 1;
image_xscale *= (1 * (obj_player_1.rats / 40)) + 1.5;
image_yscale *= (1 * (obj_player_1.rats / 40)) + 1.5;
speed = 6;
direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction + 90;