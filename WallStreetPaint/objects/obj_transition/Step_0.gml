/// @description Insert description here
if (transition_direction == 1) {
    // Fade to black
    transition_alpha += transition_speed;
    if (transition_alpha >= 1) {
        transition_alpha = 1;  // Fully opaque
        room_goto(Map); // Change room
        transition_direction = -1; // Start fading out
    }
} else if (transition_direction == -1) {
    // Fade back to transparent
    transition_alpha -= transition_speed;
    if (transition_alpha <= 0) {
        transition_alpha = 0;  // Fully transparent
        instance_destroy();    // Remove the transition object
    }
}


