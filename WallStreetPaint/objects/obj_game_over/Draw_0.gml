/// @description Game over text
// You can write your code in this editor

/*draw_set_color(c_white);

// Game over message
var game_over_message = "Game Over!";

//  Position for centering the text
var text_x = room_width / 2.5;
var text_y = room_height / 3;

// Draw the message in the center of the screen
draw_text(text_x, text_y, game_over_message);*/

// Apply alpha to the text
draw_set_alpha(text_alpha);

// Draw Game Over text
draw_set_font(fnt_game_over);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(room_width / 2, room_height / 2 - 50, game_over_text);

// Reset alpha to default for other drawings
draw_set_alpha(1);