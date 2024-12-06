/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(10, 10, "Type 1 Kills: " + string(global.kill_count_type1));
draw_text(10, 30, "Type 2 Kills: " + string(global.kill_count_type2));
draw_text(10, 50, "Type 3 Kills: " + string(global.kill_count_type3));
draw_text(10, 70, "Current Enemy Type: " + string(global.current_enemy_type));

