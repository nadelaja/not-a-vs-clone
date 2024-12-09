/// @description Countdown timer removes the text when time runs out
display_time -= 1;
if (display_time <= 0) {
    instance_destroy();  
}
