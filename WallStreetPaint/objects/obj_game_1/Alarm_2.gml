/// @description Insert description here
// You can write your code in this editor

/// @description Rock spawning and instance management

// Camera view variables
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);

// Instance activation/deactivation
instance_activate_region(_vx - 480, _vy - 480, _vw + 480, _vh + 480, 1);
instance_deactivate_region(_vx - 481, _vy - 481, _vw + 481, _vh + 481, 0, 1);





//var XX = irandom_range(0,1312)
//var YY = irandom_range(0,448)






// Define the maximum number of small enemies allowed
var max_enemies = 150;

// Check the current number of enemies 
var current_enemy_count = instance_number(obj_enemy_child);

// Only spawn a new enemy if we're below the maximum
if (current_enemy_count < max_enemies) {
    var d = 200;
var left_player = obj_player_1.x - d/2
var right_player = obj_player_1.x + d/2
var up_player = obj_player_1.y - d/2
var down_player = obj_player_1.y + d/2

var x_left = irandom_range(0, left_player)
var x_right = irandom_range(right_player,1300)
var y_up = irandom_range(up_player, 0)
var y_down = irandom_range(down_player, 438)

var XX
if (x_left <= 0) {
    XX = x_right
} else if (x_right >= 1300) {
    XX = x_left
} else {
    XX = choose (x_left, x_right)
}

var YY
if (y_up <= 0) {
    YY = y_down
} else if (y_down >= 438) {
    YY = y_up
} else {
    YY = choose (y_up, y_down)
}

instance_create_layer(XX, YY, "Instances", obj_enemy_child)
}
/*
var dir = irandom_range(0,360);
	
	var XX = clamp( obj_player_1.x + lengthdir_x(480, dir), 10, 1300)
	var YY = clamp(obj_player_1.y + lengthdir_y(240, dir), 10, 438);
	 
    instance_create_layer(XX,YY, "Instances", obj_enemy_child);*/



// Set the alarm for the next spawn attempt
alarmSpawnTime = 10 + 70 * exp(-obj_player_1.rats * 0.7)  
alarm[2] = alarmSpawnTime;

