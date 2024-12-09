/// @description Insert description here
// You can write your code in this editor

if (text_alpha < 1) {
    text_alpha += 0.02; // Adjust speed of fade-in
}

if text_alpha ==1{
	if keyboard_check_pressed(vk_anykey){
		game_restart();
	} 
} 