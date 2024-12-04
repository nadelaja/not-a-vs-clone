/// @description Random Movement
// You can write your code in this editor
speed = 0.6;
alarm[1] = 15;


grid = mp_grid_create(0, 0, room_width div 8, room_height div 8, 8, 8);
mp_grid_add_instances(grid, oObstaclesParent, true); // Add obstacles to grid

// Initialize variables
path = -1;

// Attempt to create an initial path
path = path_add();
if (mp_grid_path(grid, path, x, y, obj_player_1.x, obj_player_1.y, true)) {
    // Start following the initial valid path
    path_start(path, 0.6, path_action_stop, false);
} else {
    show_debug_message("Failed to create initial valid path!");
    path_delete(path);
    path = -1;
}

// Set alarm for periodic path recalculation
alarm[0] = 30; // Recalculate every 30 frames


// White flash on hit
flash_timer = 0;
flash_duration = 5;