/// @description Score and Timer
// You can write your code in this editor

// Draw the score on the left side
draw_text(10, 30, "Score: " + string(points));  // Display score

// Calculate minutes and seconds
var _minutes = timer div 60;   // Divide by 60 to get minutes
var _seconds = timer mod 60;   // Modulo 60 to get remaining seconds

// Draw the elapsed time on the screen
draw_text(750, 30, "Time: " + string(_minutes) + ":" + string(_seconds));  // Display time in MM:SS format
//This is not accutate at all :/

draw_text_ext_transformed(50,50, instance_number(obj_enemy_parent), 0,500,4,4,0);