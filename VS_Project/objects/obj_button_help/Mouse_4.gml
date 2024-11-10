/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_exists(obj_controls)) {
	
	instance_destroy(obj_controls);
}

else {
	instance_create_layer(room_width / 2, room_height - 800, "instances", obj_controls);
} // location is in the center of the room and 800px from the bottom of the page
