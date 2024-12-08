/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

obj_game_1.points += 100;
global.kill_count_type2 += 1;
global.kill_count++;

audio_play_sound(snd_enemy_kill, 0, false);