/// @description Game controls/objectives are explained here
// You can write your code in this editor

// Set the font and alignment for the text
draw_set_font(fnt_body);  // 
draw_set_halign(fa_left);         // Left-align!
draw_set_valign(fa_top);          // Top-align b/c multi-line text

// Set text color
draw_set_color(c_white);  

// Draw the instructions
var text_x = 500;                  // X-coordinate for text
var text_y = 50;                  // Y-coordinate for text
var instructions = 
    "Controls:\n\n" +
    "- Use WASD or Arrow Keys to Move\n" +
    "- Point your Mouse to Aim\n" +
    "- Press the Space Bar to trigger your Ultimate Attack\n\n\n" +
	"Objective\n\n" +
	"- Destroy your enemies\n" +
	"- Collect Rats to level up your weapons\n" +
	
    "More instructions to come...!";

draw_text(text_x, text_y, instructions);

// Reset draw properties 
draw_set_halign(fa_left);  
draw_set_valign(fa_top);  
draw_set_color(c_white);  


