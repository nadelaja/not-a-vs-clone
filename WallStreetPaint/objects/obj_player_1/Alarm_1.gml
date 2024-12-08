/// @description Insert description here
// You can write your code in this editor


alarm_set(1, room_speed);
if((current_color == "blue") && !areaAttack_active && !player_dead) {
	var player_x = x;
	var player_y = y;
	var angle_to_cursor = point_direction(player_x, player_y, mouse_x, mouse_y); 
	var arc_center_angle = (angle_to_cursor + 180) * (pi / 180);
	var arc_width = 2 * pi / 6;
	var r = 60; 
	for(var i = 0; i < (2 * current_level + 1); i++){
		var bullet_y = r * sin(arc_center_angle - arc_width / 2 + i * arc_width/(2 * current_level + 1));
		var bullet_x = r * cos(arc_center_angle - arc_width / 2 + i * arc_width/(2 * current_level + 1));
		instance_create_layer(bullet_x + player_x, -bullet_y + player_y, "Instances", obj_blue_bullet);
	}
}
