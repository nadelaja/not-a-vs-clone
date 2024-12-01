/// @description Insert description here
// You can write your code in this editor
alarm_set(0,room_speed / 2);
speed = 0;
image_xscale = 0.5;
image_yscale = 0.5;
direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction + 90
//oh so this is in the bullet object so x and y are for the bullet
