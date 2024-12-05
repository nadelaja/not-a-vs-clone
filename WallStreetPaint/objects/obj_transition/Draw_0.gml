/// @description Transition Triangle 
// You can write your code in this editor

draw_set_alpha(transition_alpha);  // Set transparency
draw_set_color(c_black);           // Black fade color
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);                 // Reset alpha to default
