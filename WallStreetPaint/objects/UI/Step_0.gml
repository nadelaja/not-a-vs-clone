/// @description Insert description here
// You can write your code in this editor

// Increment image_index based on image_speed
image_speed = 0.2;
image_index += image_speed;

// Loop back to the first frame if we exceed the total number of frames
if (image_index >= sprite_get_number(UI_weapon_box_active)) {
    image_index = 0;
}