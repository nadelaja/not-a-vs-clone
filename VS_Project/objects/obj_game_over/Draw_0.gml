/// @description Game over text
// You can write your code in this editor

draw_set_color(c_white);

// Game over message
var game_over_message = "Game Over!";

//  Position for centering the text
var text_x = room_width / 2.5;
var text_y = room_height / 3;

// Draw the message in the center of the screen
draw_text(text_x, text_y, game_over_message);