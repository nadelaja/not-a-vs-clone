/// @description Drawing the level up text
// You can write your code in this editor


var bg_color = make_color_rgb(106, 52, 89);  // #6A3459

// Calculate text size for background
var text_width = string_width(message_text);
var text_height = string_height(message_text);
var player_x = obj_player_1.x;  // Player's x position
var player_y = obj_player_1.y - 40;

// Shadow
draw_set_font(fnt_level_up);
draw_set_color(c_black);     
draw_set_halign(fa_center);  
draw_text(player_x + 4, player_y + 4, message_text);  

// Main text
draw_set_color(c_white);     
draw_text(player_x, player_y, message_text); 

