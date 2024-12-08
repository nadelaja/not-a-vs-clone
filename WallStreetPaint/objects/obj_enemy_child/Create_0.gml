/// @description Random Movement
// You can write your code in this editor

// Values customized for each enemy
HP = -1;
enemy_speed = 0.6;
red_weapon_hit = false;

// Obstacle grid
grid = mp_grid_create(0, 0, room_width div 8, room_height div 8, 8, 8);
mp_grid_add_instances(grid, oObstaclesParent, true); // Add obstacles to grid

// Initialize variables
path = -1;

// Attempt to create an initial path
path = path_add();
if (mp_grid_path(grid, path, x, y, obj_player_1.x, obj_player_1.y, true)) {
    // Start following the initial valid path
    path_start(path, enemy_speed, path_action_stop, false);
} else {
    path_delete(path);
    path = -1;
}

// Set alarm for periodic path recalculation
alarm[0] = 10; // Recalculate every 10 frames


// White flash on hit
flash_timer = 0;
flash_duration = 5;