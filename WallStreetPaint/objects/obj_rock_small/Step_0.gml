/// @description Insert description here
// You can write your code in this editor
//move_wrap(true, true, 100);

//image_angle += 1;

// Adjust depth dynamically based on position
depth = -bbox_bottom;

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
    show_debug_message("Failed to recalculate a valid new path!");
    if (path_exists(path)) {
        path_delete(path);
        path = -1;
    }
}