// Only take damage if alarm[1] has expired (prevents repeated hits every step)
if (alarm[1] < 0 )
{
    // Reduce HP by the damage value from the players attack sprite
    hp -= other.dmg;

    // Flash red to indicate damage taken
    image_blend = c_red;
    
    // Apply knockback direction based on relative position to attacker
    kb_x = sign(x - other.x); // Horizontal knockback
    kb_y = sign(y - other.y); // Vertical knockback

    // Set invulnerability / hit cooldown timer (20 steps = ~0.33s at 60 FPS)
    alarm[1] = 20;
}
