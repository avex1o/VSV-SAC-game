// Only take damage if alarm[0] has expired (prevents continuous hits)
if (alarm[0] < 0)
{
    // Reduce HP by the damage value from the enemy object
    hp -= other.dmg;

    // Reset hit cooldown timer (1 second at 60 FPS)
    alarm[0] = 60;

    // Flash red to indicate damage taken
    image_blend = c_red;
    
    // If HP reaches 0 or below, restart the room (player death)
    if (hp <= 0) 
    {
        room_restart();
    }
}
