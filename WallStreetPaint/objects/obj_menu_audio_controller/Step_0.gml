/// @description Insert description here

// List of rooms where music should keep playing
var rooms_with_music = [rm_menu, rm_rules];

// Check if the current room should have music
if (array_length(rooms_with_music) > 0) {
    if (array_contains(rooms_with_music, room)) {
        if (!global.music_playing) {
            global.current_music = audio_play_sound(snd_music, 1, true);
            global.music_playing = true;
        }
    } else {
        if (global.music_playing) {
            audio_stop_sound(global.current_music);
            global.music_playing = false;
        }
    }
}

if (!window_has_focus()) {
    audio_pause_all(); // Pause all audio if the browser tab loses focus
} else {
    audio_resume_all(); // Resume audio when the tab regains focus
}