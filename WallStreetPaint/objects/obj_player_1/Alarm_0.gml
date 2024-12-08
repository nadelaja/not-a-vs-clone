/// @description Insert description here
// You can write your code in this editor

alarm_set(0, room_speed * (2 - current_level * 0.25));

if((current_color == "red") && !areaAttack_active && !player_dead){
	instance_create_layer(x, y, "Instances", obj_red_bullet);
}
