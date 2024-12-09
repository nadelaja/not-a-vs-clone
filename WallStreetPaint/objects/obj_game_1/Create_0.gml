/// @description Insert description here In game audio is here!
// You can write your code in this editor
points = 0;

timer = 0;  // Start the timer at 0 seconds
alarm[3] = 60;

alarmTime = 20;
alarm[1] = 20;
alarmSpawnTime = 100 - (obj_player_1.rats / 3);
alarm[2]= alarmSpawnTime;


audio_play_sound(snd_game_start, 1, false); // Plays the level start sound once!

audio_sound_gain(snd_in_game, 0.25, 0);
audio_play_sound(snd_in_game, 1, true); // Plays the in-game sound on a loop


current_enemy_count = 0;