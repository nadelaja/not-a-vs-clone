/// @description Insert description here
// You can write your code in this editor
alarm_set(2, room_speed / (2.5 + current_level * 0.6))

if((current_color == "white") && !areaAttack_active && !player_dead){
	instance_create_layer(x, y, "Instances", obj_white_bullet)
}