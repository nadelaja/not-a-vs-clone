var bar_x = 300; // X position of the health bar
var bar_y = 10; // Y position of the health bar
var stretch_factor = 2; // Adjust this to change how much you stretch the bar

// Calculate fill based on current health
var hp_max = 100; // Maximum HP
var hp_current = obj_player_1.hp; // Current HP
var fill_width = (hp_current / hp_max) * sprite_get_width(UI_healthbar_box_full);

// Fill color based on health percentage
var fill_color;
if (hp_current > hp_max * 0.5) {
    fill_color = c_green;
} else if (hp_current > hp_max * 0.25) {
    fill_color = c_yellow;
} else {
    fill_color = c_red;
}

// Draw filled portion with color first
draw_sprite_part_ext(UI_healthbar_box_full, 0, 0, 0, fill_width, sprite_get_height(UI_healthbar_box_full), 
                     bar_x, bar_y, stretch_factor, 1.5, fill_color, 1);

// Then draw empty health bar above the filled one
draw_sprite_ext(UI_healthbar_box, 0, bar_x, bar_y, stretch_factor, 1.5, 0, c_white, 1);


//UI Player Stats
draw_sprite_ext(UI_playerStats_box, 0, bar_x, bar_y, stretch_factor, 1.5, 0, c_white, 1);


