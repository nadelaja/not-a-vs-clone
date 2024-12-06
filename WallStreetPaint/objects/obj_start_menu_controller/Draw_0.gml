/// @Title Text!

// Set font and alignment for the title
draw_set_font(fnt_title);  // 
draw_set_halign(fa_center); // Center alignment horizontally
draw_set_valign(fa_middle); // Center alignment vertically

// Set title color
var title_color = c_white; //
var bg_color =  make_color_rgb(218, 165, 32)

// Draw the title at the center of the screen
var title_x = display_get_gui_width() / 2;  // Center of the screen horizontally
var title_y = display_get_gui_height() / 3; // Top quarter of the screen
// Shadow
draw_text_color(title_x + 3, title_y + 3, "Touch Grass:\n\nA Very New York\n Twin-Stick Shooter", bg_color, bg_color, bg_color, bg_color, 1);

// Title
draw_text_color(title_x, title_y, "Touch Grass:\n\nA Very New York\n Twin-Stick Shooter", title_color, title_color, title_color, title_color, 1);


// Reset alignment to default
draw_set_halign(fa_left);
draw_set_valign(fa_top);





