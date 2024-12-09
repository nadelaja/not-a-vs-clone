/// @description
// You can write your code in this editor

/*switch (sprite_index) {
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
}*/

switch (sprite_index) {
    case character_white:
        sprite_index = character_red;
        current_color = "red";
        current_weapon = 0; // Set to red weapon
        break;
    case character_red:
        sprite_index = character_blue;
        current_color = "blue";
        current_weapon = 1; // Set to blue weapon
        break;
    case character_blue:
        sprite_index = character_white;
        current_color = "white";
        current_weapon = 2; // Set to white weapon
        break;
    case character_white_walk:
        sprite_index = character_red_walk;
        current_color = "red";
        current_weapon = 0; // Set to red weapon
        break;
    case character_red_walk:
        sprite_index = character_blue_walk;
        current_color = "blue";
        current_weapon = 1; // Set to blue weapon
        break;
    case character_blue_walk:
        sprite_index = character_white_walk;
        current_color = "white";
        current_weapon = 2; // Set to white weapon
        break;
}