/// @description Insert description here
// You can write your code in this editor
switch (sprite_index) {
	case character_yellow:
	sprite_index = character_red;
	current_color = "red";
	break;
	case character_red:
	sprite_index = character_blue;
	current_color = "blue";
	break;
	case character_blue:
	sprite_index = character_yellow;
	current_color = "yellow";
	break;
	case character_yellow_walk:
	sprite_index = character_red_walk;
	current_color = "red";
	break;
	case character_red_walk:
	sprite_index = character_blue_walk;
	current_color = "blue";
	break;
	case character_blue_walk:
	sprite_index = character_yellow_walk;
	current_color = "yellow";
	break;
}
