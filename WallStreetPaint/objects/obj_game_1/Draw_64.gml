/// @description Score and Timer
// You can write your code in this editor
draw_set_color(c_white);

// Draw the score on the left side
//draw_text(10, 30, "Score: " + string(points));  // Display score

var _points = 0;

if (points < 10) {
	_points = "00000" + string(points);
} else if (points < 100) {
	_points = "0000" + string(points);
} else if (points < 1000) {
	_points = "000" + string(points);
} else if (points < 10000) {
	_points = "00" + string(points);
} else if (points < 100000) {
	_points = "0" + string(points);
} else {
	_points = string(points);
}

draw_set_font(fnt_body);
draw_text_transformed(70, 40, "Score", 0.5, 0.5, 0); // Scale x1

draw_set_font(fnt_menu);
draw_text_transformed(20, 84, _points, 1.5, 1.5, 0); // Scale x2


// Calculate minutes and seconds
var _minutes = timer div 60;   // Divide by 60 to get minutes

if (_minutes < 10) {
	_minutes = "0" + string(_minutes);
} else {
	_minutes = string(_minutes);
}

var _seconds = timer mod 60;   // Modulo 60 to get remaining seconds

if (_seconds < 10) {
	_seconds = "0" + string(_seconds);
} else {
	_seconds = string(_seconds);
}

// Draw the elapsed time on the screen
//draw_text(750, 30, "Time: " + string(_minutes) + ":" + string(_seconds));  // Display time in MM:SS format

draw_set_font(fnt_body);
draw_text_transformed(1772, 40, "Time:", 0.5, 0.5, 0); // Scale x1.5
draw_set_font(fnt_menu);
draw_text_transformed(1772, 84, _minutes + ":" + _seconds, 1.5, 1.5, 0); // Scale x1.5
//This is not accutate at all :/

//draw_text_ext_transformed(50,100, instance_number(obj_enemy_parent), 0,500,3,3,0);  //3,3 adjusts the scale of the text


/*
//simple hp
draw_set_color(#6A3459); // Set text color

// Check if player instance exists before trying to access its hp
if (instance_exists(obj_player_1)) {
    var player_instance = instance_find(obj_player_1, 0); // Find the player instance
	draw_text_transformed (1740, 30, "HP: " + string(player_instance.hp), 1.5, 1.5, 0);
}
*/