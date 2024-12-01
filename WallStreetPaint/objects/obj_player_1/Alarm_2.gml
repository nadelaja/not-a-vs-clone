/// @description Insert description here
// You can write your code in this editor
alarm_set(2, room_speed / ((4 * (rats / 35)) + 2))
if(current_color == "yellow")
	instance_create_layer(x, y, "Instances", obj_yellow_bullet)
	