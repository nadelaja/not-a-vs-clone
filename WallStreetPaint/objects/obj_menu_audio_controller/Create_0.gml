/// @description Audio

persistent = true; // Ensures the object persists between rooms
global.music_playing = false;

if (!global.music_playing) {
    global.current_music = audio_play_sound(snd_start_menu, 1, true); 
	global.music_playing = true;
}

