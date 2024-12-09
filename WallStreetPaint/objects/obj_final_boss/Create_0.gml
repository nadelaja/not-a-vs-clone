/// @description Insert description here
// You can write your code in this editor
speed = 0.6
boss_HP = 5000;

image_angle = 0
image_xscale *= 1
image_yscale *= 1

direction = point_direction(x,y, obj_player_1.x, obj_player_1.y)

fcharge = true
if(obj_final_boss.x >= obj_player_1.x){
	image_xscale = -1;}
else{ 
	image_xscale = 1; }
	
	
var HP = 2500


red_weapon_hit = false;

// White flash on hit
flash_timer = 0;
flash_duration = 5;