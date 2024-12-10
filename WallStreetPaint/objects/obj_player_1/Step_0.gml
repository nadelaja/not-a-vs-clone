
var _left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var _right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
var _up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var _down = (keyboard_check(vk_down) || keyboard_check(ord("S")));
var _hspd = _right - _left;
var _vspd = _down - _up;


if (!areaAttack_active && !player_dead && (_hspd != 0 || _vspd != 0))
{
    // Switch to walking sprite based on current color
    switch(current_color) {
		case "red":
			sprite_index = character_red_walk;
			break;
		case "blue":
			sprite_index = character_blue_walk;
			break;
		case "white":
			sprite_index = character_white_walk;
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
	
} else if (!areaAttack_active && !player_dead) {
	// Switch back to idle sprite when not moving based on current color
    switch(current_color) {
		case "red":
			sprite_index = character_red;
			break;
		case "blue":
			sprite_index = character_blue;
			break;
		case "white":
			sprite_index = character_white;
			break;
	}
}


// Function to spawn rocks
function spawn_rocks() {
    var num_rocks = 20; // Number of rocks to spawn

    for (var i = 0; i < num_rocks; i++) {
        // Randomly determine spawn position around player
        var rock_x = x + irandom_range(-60, 60);
        var rock_y = y - irandom_range(-40, 40);

        // Create rock instance
        var rock_instance = instance_create_layer(rock_x, rock_y, "Instances", oRock);
		
		// Flip sprite if rock is to the right of the player. Randomize sizes.
        rock_instance.image_xscale = (rock_x > x) ? random_range(-1, -0.5) : random_range(0.5, 1);
		rock_instance.image_yscale = abs(rock_instance.image_xscale);

        // Randomizing rock start frame to make them appear at slightly different times
        rock_instance.image_index = irandom_range(0, 9);
		
		// Managing depth vs other assets
		rock_instance.depth = - rock_instance.bbox_bottom;
    }
}


// Handle melee attack input
if (keyboard_check_pressed(vk_space) && !areaAttack_active && !player_dead && !areaAttack_cooldown) {
	
	areaAttack_active = true;
	
    sprite_index = areaAttack_character; // Switch to attack animation
    image_index = 0; // Reset animation frame index
    
    // Create hitbox in front of player based on direction faced
    instance_create_layer(x, y, "Limits", obj_melee_hitbox);
	
	// Spawn rocks upon creating hitbox
    spawn_rocks();
}

// Reset back to idle after attack animation finishes based on current color
if (areaAttack_active && image_index == image_number - 1) {
	// Remove hitbox and rocks after animation ends
	with (oRock) {
        instance_destroy();
    }
    with (obj_melee_hitbox) {
        instance_destroy();
    }
	
   /* areaAttack_active = false;
	areaAttack_cooldown = true;
	cooldown_timer = 5;
	
	alarm_set(3, 60);*/
	
	areaAttack_active = false;
	areaAttack_cooldown = true;
	areaAttack_cooldown_current = areaAttack_cooldown_max;
	
	
	alarm_set(3, 1); // Start the alarm
	
	
    switch(current_color) {
        case "red": // Red weapon/color
            sprite_index = character_red;
            break;
        case "blue": // Blue weapon/color
            sprite_index = character_blue;
            break;
        case "white": // White weapon/color
            sprite_index = character_white;
            break;
    }
}

move_wrap(true, true, 0);

depth = -bbox_bottom;


// Invulnerability timer. Convert the map keys into an array

var keys_array = ds_map_keys_to_array(invulnerable_map);

// Iterate over the array of keys to find the value
for (var i = 0; i < array_length(keys_array); i++) {
    var key = keys_array[i];
    var timer = ds_map_find_value(invulnerable_map, key);

    // Decrease the timer if it's greater than zero
    if (timer > 0) {
        ds_map_replace(invulnerable_map, key, timer - 1);
    }
}


// Level up

function level_up() {
	current_level += 1;
	//show_message("Level Up! Your current level is " + string(current_level));
	hp = 100;
	
	// In game level up message
	instance_create_layer(room_width / 2, room_height / 2, "Level", obj_level_up_message);
	obj_level_up_message.depth = -100;
	
    // Stop gamplay loop sound
    audio_stop_sound(snd_in_game);

    // Play level-up sound
    audio_play_sound(snd_level_complete, 1, false); // Play once, not looping

    // Wait for the level-up sound to finish, then restart background music
    alarm[4] = room_speed * 3.84;  // 3.84 seconds delay
}

if (rats >= 60){
	if(current_level == 1) level_up();
}
if (rats >= 120) {
	if(current_level == 2) level_up();
}
if (rats >= 170) {
	if(current_level == 3) level_up();
}
if (rats >= 210) {
	if(current_level == 4) level_up();
}
if (rats >= 250) {
	if(current_level == 5) level_up();
}



// Death


// HP is zero or below -> game over scenario
if (hp <= 0) {
	audio_stop_sound(snd_in_game); // Stop gameplay loop sound
	
    if (!player_dead) {
        sprite_index = character_death;
        player_dead = true;
    }
    
    if (player_dead && image_index >= image_number - 1) {
        // Handle game over
        //show_message("Game Over!");
        //room_restart(); // This will restart the current room, triggering Create events
        
		 // Destroy all remaining instances from the gameplay room
        with (all) {
            if (object_index != obj_game_over) instance_destroy();
        }

		room_goto(rm_game_over); // Redirect to the Game Over screen
		hp = 300;
        player_dead = false;
		areaAttack_active = false;
		areaAttack_cooldown = false;
		cooldown_timer = 0;
		x = 656;
		y = 80;
        
        // Reset EXP and level
        rats = 0; // Reset rat count (EXP)
        current_level = 1; // Reset level to 1
    }
}



