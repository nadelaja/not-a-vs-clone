var enemy_id = other.id;

if (!ds_map_exists(invulnerable_map, enemy_id) || ds_map_find_value(invulnerable_map, enemy_id) <= 0) {

	if (!player_dead) {
    hp -= 10; //Dmg to player
	
	//Invulnerability timer for this enemy
    ds_map_replace(invulnerable_map, enemy_id, 30); // 30 frames of invulnerability, 0.5 seconds
	
	//Red flash timer
	flash_timer = flash_duration;
	}
}


