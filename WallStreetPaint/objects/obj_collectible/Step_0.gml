
var distance = point_distance(x, y, obj_player_1.x, obj_player_1.y);
    
if (distance < obj_player_1.pickup_radius) {
    // Move rat towards player
	var dir = point_direction(x, y, obj_player_1.x, obj_player_1.y);
    x += lengthdir_x(100/distance, dir);
    y += lengthdir_y(100/distance, dir);
        
    // Check if close enough to collect
    if (distance < 24){
		instance_destroy(); // Destroy rat
		obj_player_1.rats++;
	}
}

lifetime++;

// Check if lifetime exceeds 10 seconds
if (lifetime > 600) { // 10 seconds * 60 frames per second
    instance_destroy(); // Destroy rat if not collected in time
}