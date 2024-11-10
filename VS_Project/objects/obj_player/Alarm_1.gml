/// @description Insert description here
// You can write your code in this editor

/*if(image_index == 1) {
	instance_create_layer(x, y, "Instances", obj_blue_bullet);	
	while(burst_count < 85){
		instance_create_layer(x + burst_count, y + burst_count, "Instances", obj_blue_bullet);
		burst_count += 20;
	}
	burst_count = -80;
}*/
//I regret to inform you that is the full version
alarm_set(1, room_speed * 2);
if(image_index == 1) {
	var player_x = x;
	var player_y = y;
	var angle_to_cursor = point_direction(player_x, player_y, mouse_x, mouse_y); 
	var arc_center_angle = (angle_to_cursor + 180) * (pi / 180);
	var arc_width = 3 * pi / 6;
	var r = 120; 
	for(var i = 0; i < burst_count; i++){
		var bullet_y = r * sin(arc_center_angle - arc_width / 2 + i * arc_width/(burst_count - 1));
		var bullet_x = r * cos(arc_center_angle - arc_width / 2 + i * arc_width/(burst_count - 1));
		instance_create_layer(bullet_x + player_x, -bullet_y + player_y, "Instances", obj_blue_bullet);
	}
}

//onechan how do we increase bullet separation?
//i forgot how the code works