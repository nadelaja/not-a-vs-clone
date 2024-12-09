/// @description Insert description here
// You can write your code in this editor
var enemy_id = other.id;

if (!ds_map_exists(invulnerable_map, enemy_id) || ds_map_find_value(invulnerable_map, enemy_id) <= 0) {

	if (!player_dead) {
    hp -= 20//Dmg to player
	
	//Invulnerability timer for this enemy
    ds_map_replace(invulnerable_map, enemy_id, 60); // 30 frames of invulnerability, 0.5 seconds
	
	//Red flash timer
	flash_timer = flash_duration;
	}
}


