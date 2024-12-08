/// @description Insert description here
// You can write your code in this editor

// Check progression thresholds
if (global.kill_count >= 50 && global.current_enemy_level == 1) {
    global.current_enemy_level = 2; // Switch to Level 2
} else if (global.kill_count >= 100 && global.current_enemy_level == 2) {
    global.current_enemy_level = 3; // Switch to Level 3
} else if (global.kill_count >= 200 && global.current_enemy_level == 3) {
	global.current_enemy_level = 4; // Switch to Level 4
} else if (global.kill_count >= 300 && global.current_enemy_level == 4) {
	global.current_enemy_level = 5; // Switch to Level 5
} else if (global.kill_count >= 400 && global.current_enemy_level == 5 && !boss_spawned) {
    boss_spawned = true;
    
    // Spawn the final boss
    instance_create_layer(room_width / 2, room_height / 2, "Enemies", obj_final_boss);

}
