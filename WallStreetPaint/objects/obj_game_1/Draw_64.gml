/// @description Score and Timer
// You can write your code in this editor
draw_set_font(fnt_menu)
// Draw the score on the left side
//draw_text(10, 30, "Score: " + string(points));  // Display score
draw_text_transformed(30, 30, "Score: " + string(points), 1.5, 1.5, 0); // Scale x1.5



// Calculate minutes and seconds
var _minutes = timer div 60;   // Divide by 60 to get minutes
var _seconds = timer mod 60;   // Modulo 60 to get remaining seconds

// Draw the elapsed time on the screen
//draw_text(750, 30, "Time: " + string(_minutes) + ":" + string(_seconds));  // Display time in MM:SS format
draw_text_transformed(870, 30, "Time: " + string(_minutes) + ":" + string(_seconds), 1.5, 1.5, 0); // Scale x1.5
//This is not accutate at all :/

draw_text_ext_transformed(50,100, instance_number(obj_enemy_parent), 0,500,3,3,0);  //3,3 adjusts the scale of the text

//simple hp
draw_set_color(c_white); // Set text color

// Check if player instance exists before trying to access its hp
if (instance_exists(obj_player_1)) {
    var player_instance = instance_find(obj_player_1, 0); // Find the player instance
	draw_text_transformed (1740, 30, "HP: " + string(player_instance.hp), 1.5, 1.5, 0);
}