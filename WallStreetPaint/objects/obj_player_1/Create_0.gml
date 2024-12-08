/// @description Insert description here
// You can write your code in this editor
gpu_set_texfilter(false);


alarm_set(0, room_speed / 2);
alarm_set(1, room_speed);
alarm_set(2, room_speed * 2);

current_color = "red";
sprite_index = character_red;

// HP setup
hp = 100; // Maximum HP

// Enemy dmg on us, invulnerability flag against multiple enemies
invulnerable_map = ds_map_create();

flash_timer = 0;
flash_duration = 10;


pickup_radius = 64; // How far rats will be attracted

current_level = 1; // Current character level

player_dead = false; // Death tag


//EXP Bar
current_level = 1;
rats = 0;
level_thresholds = [60, 120, 170, 210, 250];

// Weapons array for switching ui 
current_weapon = 0; // Start with the first weapon
weapon_icons = [redWeapon_icon41, blueWeapon_icon, whiteWeapon_icon,areaAttack_icon];



areaAttack_active = false;
areaAttack_cooldown = false;
cooldown_timer = "";

