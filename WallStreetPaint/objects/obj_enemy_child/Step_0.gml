/// @description Insert description here
// You can write your code in this editor
//move_wrap(true, true, 100);

//image_angle += 1;

// Adjust depth dynamically based on position
depth = -bbox_bottom;

// Ensure fallback behavior in case no valid path exists and no movement is happening
if (!path_exists(path)) {
    var dx = obj_player_1.x - x;
    var dy = obj_player_1.y - y;

    if (point_distance(x, y, obj_player_1.x, obj_player_1.y) > 4) { 
        move_towards_point(obj_player_1.x, obj_player_1.y, speed);
    } else {
        speed = 0;
    }
}

if (obj_player_1.x < x) {image_xscale = -1;}
	else { image_xscale = 1;}