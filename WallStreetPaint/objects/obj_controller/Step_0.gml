/// @description Insert description here
// You can write your code in this editor

// Check progression thresholds
if (global.kill_count_type1 >= 10 && global.current_enemy_type == 1) {
    global.current_enemy_type = 2; // Switch to Type 2 enemies
} else if (global.kill_count_type2 >= 10 && global.current_enemy_type == 2) {
    global.current_enemy_type = 3; // Switch to Type 3 enemies
} else if (global.kill_count_type3 >= 10 && global.current_enemy_type == 3 && !boss_spawned) {
    boss_spawned = true;
    
    // Spawn the final boss
    instance_create_layer(room_width / 2, room_height / 2, "Enemies", obj_final_boss);

    // Optional: Stop enemy spawning
    alarm[0] = -1; // Disable the alarm
}

// Spawn enemies based on the current type if no boss has spawned
if (!boss_spawned && alarm[0] <= 0) {
    // Spawn enemy based on the current type
    if (global.current_enemy_type == 1) {
        instance_create_layer(random(room_width), random(room_height), "Enemies", obj_enemy_lvl1);
    } else if (global.current_enemy_type == 2) {
        instance_create_layer(random(room_width), random(room_height), "Enemies", obj_enemy_lvl2);
    } else if (global.current_enemy_type == 3) {
        instance_create_layer(random(room_width), random(room_height), "Enemies", obj_enemy_lvl3);
    }
    // Reset the alarm for the next spawn
    alarm[0] = max(30 - (global.kill_count_type1 + global.kill_count_type2 + global.kill_count_type3) / 100, 5);
}
