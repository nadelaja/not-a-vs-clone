if (!variable_instance_exists(id, "attacking")) {
    attacking = false;
}

if (!variable_instance_exists(id, "hitbox_active")) {
    hitbox_active = false;
}


var _left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var _right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var _up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var _down = (keyboard_check(vk_down) || keyboard_check(ord("S")));
var _hspd = _right - _left;
var _vspd = _down - _up;


if (!attacking && (_hspd != 0 || _vspd != 0))
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

    // Only change the facing direction if moving horizontally
    if (_hspd != 0) {
        image_xscale = (_right >= _left) ? 1 : -1;
    }
	
} else if (!attacking) {
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
if (keyboard_check_pressed(vk_space) && !attacking) {
    attacking = true; // Set attacking flag to true
	
    sprite_index = arrow; // Switch to attack animation
    image_index = 0; // Reset animation frame index
    
    // Create hitbox in front of player based on direction faced
    if (!hitbox_active) {
        instance_create_layer(x + (image_xscale * 16), y, "Instances", obj_melee_hitbox);
        hitbox_active = true;
    }
}

// Reset back to idle after attack animation finishes based on current color
if (attacking && image_index == image_number - 1) {
	// Remove hitbox after animation ends
    with (obj_melee_hitbox) {
        instance_destroy();
    }
    hitbox_active = false;
		
    attacking = false; // Attack complete, reset attacking flag
	
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