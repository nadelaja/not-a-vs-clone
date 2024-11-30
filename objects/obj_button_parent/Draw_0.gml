/// @description Menu button design
// You can write your code in this editor

draw_self();

draw_set_font(fnt_menu);  //font selection

draw_set_halign(fa_center); // horizontal alignment
draw_set_valign(fa_middle); // vertical alignment

draw_text(x, y, button_text);//button text

draw_set_halign(fa_left);  //always reset draw properties to their default properties to avoid problems with properties drawn later
draw_set_valign(fa_top);
