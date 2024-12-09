/// @description Insert description here
/// @function draw_building(x, y, width, height, color, window_rows, window_cols)
/// @desc Draws a rectangular building with windows.
/// @param x, y - Bottom-left corner.
/// @param width, height - Dimensions of the building.
/// @param color - Building color.
/// @param window_rows, window_cols - Number of rows/columns of windows.

function draw_building(x, y, width, height, color, window_rows, window_cols) {
    // Draw building base
    draw_set_color(color);
    draw_rectangle(x, y, x + width, y - height, false);

    // Draw windows
    var window_width = width / window_cols;
    var window_height = height / window_rows;

    for (var row = 0; row < window_rows; row++) {
        for (var col = 0; col < window_cols; col++) {
            var win_x = x + (col * window_width) + 5;
            var win_y = y - (row * window_height) - 5;
            draw_set_color(c_white);  // Window color
            draw_rectangle(win_x, win_y, win_x + window_width - 10, win_y - window_height + 10, false);
        }
    }
}


//The sky
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

//The sun
//draw_set_color(make_color_rgb(255, 215, 0));
//draw_circle(1600, 150, 120, false); // Sun positioned in the upper-right corner

// Draw clouds
/*draw_set_color(make_color_rgb(255, 255, 255)); // White clouds
draw_ellipse(200, 100, 350, 150, false);  // Cloud 1
draw_ellipse(400, 150, 600, 200, false);  // Cloud 2
draw_ellipse(1300, 120, 1450, 170, false); // Cloud 3*/

// Draw buildings
var ground_y = display_get_height(); // Get the bottom of the screen (1080 for your room)

// Buildings aligned at the bottom of the screen
draw_building(100, ground_y, 250, 480, make_color_rgb(180, 180, 180), 8, 4);  // Large gray building
draw_building(400, ground_y, 250, 530, make_color_rgb(100, 100, 100), 6, 3);  // Medium dark building
draw_building(700, ground_y, 300, 580, make_color_rgb(150, 150, 150), 10, 5); // Tall light building
draw_building(1100, ground_y, 250, 530, make_color_rgb(120, 120, 120), 8, 4); // Medium gray building
draw_building(1500, ground_y, 350, 480, make_color_rgb(100, 100, 100), 12, 6); // Extra-wide building

