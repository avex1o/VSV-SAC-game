// If the player exists AND is within the allowed detection range
if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_from_player)
{
    // Set target position to the player's current position (chase player)
    target_x = obj_player.x;
    target_y = obj_player.y;
}
else
{
    // Otherwise, pick a random point within 100 pixels of the spawn position
    // This makes the object "wander" around when the player isn’t nearby
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100);
}    

// Reset alarm[0] to 60 steps (1 second at 60 FPS) before re-evaluating target
alarm[0] = 60;
