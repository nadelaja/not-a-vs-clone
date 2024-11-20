var _left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var _right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var _up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var _down = (keyboard_check(vk_down) || keyboard_check(ord("S")));
var _hspd = _right - _left;
var _vspd = _down - _up;

switch(current_color){
	case "red":
		sprite_index = character_red;
		break;
	case "blue":
		sprite_index = character_blue;
		break;
	case "yellow":
		sprite_index = character_yellow;
		break;
}

if (_hspd != 0 || _vspd != 0)
{
    // Switch to walking sprite based on current color
    switch(current_color) {
		case "red":
			sprite_index = character_red_walk;
			break;
		case "blue":
			sprite_index = character_blue_walk;
			break;
		case "yellow":
			sprite_index = character_yellow_walk;
			break;
	}	
	
    var _spd = 1.3;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
    x += _xadd;
    y += _yadd;

    image_xscale = (_right >= _left) ? 1 : -1;
	
} else {
	// Switch back to idle sprite when not moving based on current color
    switch(current_color) {
		case "red":
			sprite_index = character_red;
			break;
		case "blue":
			sprite_index = character_blue;
			break;
		case "yellow":
			sprite_index = character_yellow;
			break;
	}
}

// Handle melee attack input
if (keyboard_check_pressed(vk_space)) {
    sprite_index = character_blue_walk; // Switch to attack animation
    
    // Create hitbox in front of player based on direction faced
    instance_create_layer(x + (image_xscale * 16), y, "Instances", obj_melee_hitbox);
}

// Reset back to idle after attack animation finishes based on current color
if (sprite_index == character_blue_walk && image_index == image_number - 1) {
    switch(current_color) {
        case "red": // Red weapon/color
            sprite_index = character_red;
            break;
        case "blue": // Blue weapon/color
            sprite_index = character_blue;
            break;
        case "yellow": // Yellow weapon/color
            sprite_index = character_yellow;
            break;
    }
}

move_wrap(true, true, 0);

depth = -bbox_bottom;