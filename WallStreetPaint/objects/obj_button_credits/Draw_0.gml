/// @description Menu button design
// You can write your code in this editor

// Draw the button sprite with transparency
draw_self(); // This will draw the sprite assigned to the button object, respecting `image_alpha`

// Apply transparency to the text
draw_set_alpha(image_alpha); // Set the text alpha to match the button's transparency

// Set font and alignment for text
draw_set_font(fnt_body);  // Font selection
draw_set_halign(fa_center); // Horizontal alignment
draw_set_valign(fa_middle); // Vertical alignment

// Draw the button's text
draw_text(x, y, button_text); // Adjust `x` and `y` if needed for positioning

// Reset alignment and alpha to default values to avoid affecting other draw calls
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
