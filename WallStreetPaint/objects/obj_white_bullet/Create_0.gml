/// @description Insert description here
// You can write your code in this editor
alarm[1] = 5;

image_xscale = 1.5;
image_yscale = 1.4 + obj_player_1.current_level * 0.1;
image_index = 3;
speed = 9 + obj_player_1.current_level * 0.5;
direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction - 90;