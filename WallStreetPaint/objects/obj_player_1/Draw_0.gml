if (flash_timer > 0) {
    shader_set(red_flash); // Set shader

    draw_self(); // Draw the sprite with the shader applied

    shader_reset(); // Reset to normal drawing
    
    flash_timer -= 1; // Decrease flash timer
} else {
    draw_self(); // Normal drawing without effect
}