/// @description Insert description here
// You can write your code in this editor

var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_activate_region(_vx - 480, _vy - 480, _vw + 480, _vh + 480, 1);

instance_deactivate_region(_vx - 481, _vy - 481, _vw + 481, _vh + 481, 0, 1);
var dir = irandom_range(0,360);
var XX = obj_player_1.x + lengthdir_x(220, dir);
var YY = obj_player_1.y + lengthdir_y(220, dir);

instance_create_layer(XX,YY, "Instances", obj_enemy_child);







alarm[2] = alarmSpawnTime;