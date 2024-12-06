/// @description Insert description here
// You can write your code in this editor

// Reset the alarm to trigger enemy spawning in the next cycle
alarm[0] = max(30 - (global.kill_count_type1 + global.kill_count_type2 + global.kill_count_type3) / 100, 5);

