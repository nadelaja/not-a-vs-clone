/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left); // Align text to the left
draw_set_valign(fa_bottom); // Align text to the bottom

// Calculate the bottom-left corner position
var margin = 10; // Padding from the screen edges
var x_pos = margin; // X position stays near the left
var y_pos = display_get_height() - margin; // Y position at the bottom

// Draw the debug info
draw_text(x_pos, y_pos - 80, "Total Kills: " + string(global.kill_count));
draw_text(x_pos, y_pos - 60, "Type 1 Kills: " + string(global.kill_count_type1));
draw_text(x_pos, y_pos - 40, "Type 2 Kills: " + string(global.kill_count_type2));
draw_text(x_pos, y_pos - 20, "Type 3 Kills: " + string(global.kill_count_type3));
//draw_text(x_pos, y_pos, "Current Enemy Type: " + string(global.current_enemy_type));
