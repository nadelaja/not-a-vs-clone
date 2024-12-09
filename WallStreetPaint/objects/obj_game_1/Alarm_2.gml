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

// Enemy spawning logic
var max_enemies = 150; // Define the maximum number of small enemies allowed
current_enemy_count = instance_number(obj_enemy_lvl1) + instance_number(obj_enemy_lvl2) + instance_number(obj_enemy_lvl3);

// Only spawn a new enemy if we're below the maximum
if ((current_enemy_count < max_enemies) && (!obj_enemy_lvl_controller.boss_spawned)) {
    var d = 200;
	var left_player = obj_player_1.x - d / 2;
    var right_player = obj_player_1.x + d / 2;
    var up_player = obj_player_1.y - d / 2;
    var down_player = obj_player_1.y + d / 2;

    var x_left = irandom_range(0, left_player);
    var x_right = irandom_range(right_player, 1300);
    var y_up = irandom_range(up_player, 0);
    var y_down = irandom_range(down_player, 438);
	
var XX;

if (x_left <= 0) {
    XX = x_right
} else if (x_right >= 1300) {
    XX = x_left
} else {
    XX = choose (x_left, x_right)
}

var YY;

if (y_up <= 0) {
    YY = y_down
} else if (y_down >= 438) {
    YY = y_up
} else {
    YY = choose (y_up, y_down)
}


// Spawn enemies based on current progression
if (global.current_enemy_level == 1) {
    instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl1);
} else if (global.current_enemy_level == 2) {
	random_number = irandom(100);
	if (random_number > 90) {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl2);
	} else {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl1);
	}
} else if (global.current_enemy_level == 3) {
	random_number = irandom(100);
	if (random_number > 80) {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl2);
	} else {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl1);
	}
} else if (global.current_enemy_level == 4) {
	random_number = irandom(100);
	if (random_number > 92) {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl3);
	} else if ((random_number > 70) && (random_number <= 92)) {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl2);
	} else {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl1);
	}
} else if (global.current_enemy_level == 5) {
	random_number = irandom(100);
	if (random_number > 85) {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl3);
	} else if ((random_number > 60) && (random_number <= 85)) {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl2);
	} else {
		instance_create_layer(XX, YY, "Enemies", obj_enemy_lvl1);
	}
}
}

// Set the alarm for the next spawn attempt
alarmSpawnTime = 45 - (global.current_enemy_level * 6);  
alarm[2] = alarmSpawnTime;
