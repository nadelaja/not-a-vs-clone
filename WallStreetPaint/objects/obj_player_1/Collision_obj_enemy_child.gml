// In the Collision event with an enemy or hazard object

hp -= 5; // Decrease HP by 5 on collision

// Optional: Check if HP is zero or below and handle game over scenario
if (hp <= 0) {
    // Handle game over
    show_message("Game Over!");
    room_restart(); // This will restart the current room, triggering Create events
}

// Calculate direction from player to the colliding object
var dir = point_direction(x, y, other.x, other.y);

// Apply a small force to push the colliding object away
var force = 15; // Adjust this value to control the strength of the push
other.x += lengthdir_x(force, dir);
other.y += lengthdir_y(force, dir);

// Optional: Add a small push back to the player as well
var player_recoil = 17; // Adjust this value for player's recoil strength
x -= lengthdir_x(player_recoil, dir);
y -= lengthdir_y(player_recoil, dir);