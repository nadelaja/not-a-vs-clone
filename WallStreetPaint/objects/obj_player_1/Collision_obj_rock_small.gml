/// @Enemy colision HP handler - should i move this to the parent object?

//
hp -= 5; // Decrease HP on collision

// How to handle the If HP is zero or below
if (hp <= 0) {
    // Game over screen
    //show_message("Game Over!");
	room_goto(rm_over);
    //instance_destroy(); // Destroy player instance or reset game
}

// Calculating the direction from player to the colliding object
var dir = point_direction(x, y, other.x, other.y);

// Apply a bit of force to push the colliding object away
var force = 6; // Adjust to control the strength of the push
other.x += lengthdir_x(force, dir);
other.y += lengthdir_y(force, dir);

// Small recoil added to the player
var player_recoil = 5; // Adjust player's recoil strength
x -= lengthdir_x(player_recoil, dir);
y -= lengthdir_y(player_recoil, dir);

