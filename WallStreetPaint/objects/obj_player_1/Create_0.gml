/// @description Insert description here
// You can write your code in this editor

alarm_set(0, room_speed);
alarm_set(1, room_speed / 1.1);
alarm_set(2, room_speed / ((4 * (rats / 35)) + 2));

current_color = "red";

// HP setup
hp_1max = 100; // Maximum HP


pickup_radius = 64; // How far rats will be attracted
