/// @description Insert description here
// You can write your code in this editor

// Delete existing paths safely
if (path_exists(path)) {
    path_delete(path);
}

// Recalculate a new valid path
path = path_add();
if (mp_grid_path(grid, path, x, y, obj_player_1.x, obj_player_1.y, true)) {
    // Start following the recalculated valid path
    path_start(path, 0.6, path_action_stop, false);
} else {
    // Pathfinding failed; fallback to move_towards_point
    show_debug_message("Failed to recalculate a valid new path! Using fallback movement.");
    
    var dx = obj_player_1.x - x;
    var dy = obj_player_1.y - y;
    
    if (point_distance(x, y, obj_player_1.x, obj_player_1.y) > 4) { 
        // Move towards player if not too close
        move_towards_point(obj_player_1.x, obj_player_1.y, 0.6);
    } else {
        // Stop moving if very close to avoid jittering
        speed = 0;
    }
}

// Reset the alarm for the next recalculation
alarm[0] = 30; // Adjust this value based on desired frequency