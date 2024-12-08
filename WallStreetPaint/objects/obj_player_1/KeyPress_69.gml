/// @description Insert description here
// You can write your code in this editor

switch (sprite_index) {
	case character_white:
	sprite_index = character_blue;
	current_color = "blue";
	break;
	case character_blue:
	sprite_index = character_red;
	current_color = "red";
	break;
	case character_red:
	sprite_index = character_white;
	current_color = "white";
	break;
	case character_white_walk:
	sprite_index = character_blue_walk;
	current_color = "blue";
	break;
	case character_blue_walk:
	sprite_index = character_red_walk;
	current_color = "red";
	break;
	case character_red_walk:
	sprite_index = character_white_walk;
	current_color = "white";
	break;
}
