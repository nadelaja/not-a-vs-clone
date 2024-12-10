// EXP Bar settings
var exp_bar_x = 150; // Adjust horizontal position
var exp_bar_y = 50;  // Move closer to top of screen
var exp_x_scale = 2.5;
var exp_y_scale = 2.5;

// Calculate fill based on current rats and level thresholds
var current_threshold = obj_player_1.level_thresholds[obj_player_1.current_level - 1];
var previous_threshold = (obj_player_1.current_level > 1) ? obj_player_1.level_thresholds[obj_player_1.current_level - 2] : 0;

var exp_current = obj_player_1.rats - previous_threshold; // Current EXP based on defeated rats
var exp_max = current_threshold - previous_threshold; // Max EXP needed for next level

var exp_fill_width = (exp_current / exp_max) * sprite_get_width(UI_xp_full); // Calculate fill width

//var exp_fill_color = $AF9A35; // Fill color for EXP bar

// Draw empty EXP bar above the filled one
draw_sprite_ext(UI_xp_bar, 0, exp_bar_x, exp_bar_y, exp_x_scale, exp_y_scale, 0, c_white, 1);

// Draw filled portion of EXP bar
draw_sprite_part_ext(UI_xp_full, 0, 0, 0, exp_fill_width, sprite_get_height(UI_xp_full), 
                     exp_bar_x, exp_bar_y, exp_x_scale, exp_y_scale, c_white, 1);


// Current level above the EXP bar
var text_y_offset = 10; // Space between bar and text

draw_set_color(c_white);
draw_set_font(fnt_body);
draw_text_transformed(934, exp_bar_y - text_y_offset, "Level: " + string(obj_player_1.current_level), 0.5, 0.5, 0);




// UI Player Stats (Health Bar and more)
var health_bar_x = 20;
var health_bar_y = 920;
var health_x_scale = 2.5;
var health_y_scale = 2.5;

// Calculate fill based on current health
var hp_max = 300;
var hp_current = obj_player_1.hp;
var health_fill_width = (hp_current / hp_max) * sprite_get_width(UI_playerStats_health_bar);

// Get health bar color
var health_fill_color;
if (hp_current > hp_max * 0.5) {
    health_fill_color = c_green;
} else if (hp_current > hp_max * 0.25) {
    health_fill_color = c_yellow;
} else {
    health_fill_color = c_red;
}

// Draw filled portion of health bar
draw_sprite_part_ext(UI_playerStats_health_bar, 0, 0, 0, health_fill_width, sprite_get_height(UI_playerStats_health_bar), 
                     (health_bar_x + 140), (health_bar_y + 20), (health_x_scale + 1), (health_y_scale), health_fill_color, 1);

// Draw empty health bar above the filled one
draw_sprite_ext(UI_playerStats_box, 0, health_bar_x, health_bar_y, health_x_scale, health_y_scale, 0, c_white, 1);




// Weapons boxes and switching ui
// Define positions for the  box
var box_red_x = 1520; // x position for red weapon box
var box_blue_x = 1620; // x position for blue weapon box
var box_white_x = 1720; // x position for white weapon box
var box_ult_x = 1820; // x position for ult weapon box
var box_y = display_get_gui_height() - 98; // y position for boxes

// Define positions for icon icons
var icon_red_x = 1528; // x position for red weapon icon 
var icon_blue_x = 1628; // x position for blue weapon icon 
var icon_white_x = 1728; // x position for white weapon icon
var icon_ult_x = 1828; // x position for ult weapon icon
var icon_y = display_get_gui_height() - 90; // y position for icons 

var scale_factor = 2.0; // Scale factor to double size

// Draw box and icon with active highlighting
for (var i = 0; i < array_length(obj_player_1.weapon_icons); i++) {
    var box_x;
    var icon_x;

    switch(i) {
        case 0:
            box_x = box_red_x;
            icon_x = icon_red_x;
            break;
        case 1:
            box_x = box_blue_x;
            icon_x = icon_blue_x;
            break;
        case 2:
            box_x = box_white_x;
            icon_x = icon_white_x;
            break;
        case 3:
            box_x = box_ult_x;
            icon_x = icon_ult_x;
            break;
    }

    // Draw inactive box first!!!
    draw_sprite_ext(UI_weapon_box, 0, box_x, box_y, scale_factor, scale_factor, 0, c_white, 1); 

    // Draw active weapon box with animation
    if (i == obj_player_1.current_weapon) {
        draw_sprite_ext(obj_player_1.weapon_icons[i], 0, icon_x, icon_y, scale_factor, scale_factor, 0, c_white, 1); // Active weapon icon
        draw_sprite_ext(UI_weapon_box_active, floor(image_index), box_x, box_y, scale_factor, scale_factor, 0, c_white, 1); // Active box after weapon, order is super important!
    } else {
        draw_sprite_ext(obj_player_1.weapon_icons[i], 0, icon_x, icon_y, scale_factor, scale_factor, 0, c_white, 1); // Inactive weapon icon
    }
    
    // Draw cooldown overlay for ultimate attack
    if (i == 3 && obj_player_1.areaAttack_cooldown) {
        var cooldown_progress = obj_player_1.areaAttack_cooldown_current / obj_player_1.areaAttack_cooldown_max;
        draw_set_color(c_black);
        draw_set_alpha(0.5);
        draw_rectangle(icon_x, icon_y, icon_x + sprite_get_width(obj_player_1.weapon_icons[i]) * scale_factor, icon_y + sprite_get_height(obj_player_1.weapon_icons[i]) * scale_factor * cooldown_progress, false);
        draw_set_alpha(1);
    }
}