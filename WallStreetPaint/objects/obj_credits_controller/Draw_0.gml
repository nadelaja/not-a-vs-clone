/// @description Game controls/objectives are explained here
// You can write your code in this editor

// Set the font and alignment for the text
draw_set_font(fnt_body);  // 
draw_set_halign(fa_left);         // Left-align!
draw_set_valign(fa_top);          // Top-align b/c multi-line text

// Set text color
draw_set_color(c_white);  

// Draw the instructions
var text_x = 750;                  // X-coordinate for text
var text_y = 100;                  // Y-coordinate for text
var teamCredits = 
   "Brought to you by Team Broker Breaker\n\n" +
    "- Jummy Adelaja\n" +
	"- Felicita Kowalski\n" +
	"- Sanya Gupta\n" +
	"- Pavlo Soldatov\n\n\n\n" +
	"Thank you for playing!";

draw_text(text_x, text_y, teamCredits);

// Reset draw properties 
draw_set_halign(fa_left);  
draw_set_valign(fa_top);  
draw_set_color(c_white);  


