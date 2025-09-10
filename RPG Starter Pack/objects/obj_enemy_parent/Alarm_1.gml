// Set the sprite color tint to white (no color change)
image_blend = c_white;

// If health points reach 0 or below
if (hp <= 0)
{
    // Destroy this instance (remove it from the game)
    instance_destroy();
    
    // Award experience points to the player
    obj_player.add_xp(xp_value);
}
