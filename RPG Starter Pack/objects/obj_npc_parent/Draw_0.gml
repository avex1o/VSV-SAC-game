// Draw the NPC's sprite (it is called before other drawing to ensure it is rendered correctly)
draw_self();

// If the player can talk and no dialogue instance exists, display a "talk" icon above the NPC
if(can_talk && !instance_exists(obj_dialog))
{
    draw_sprite(spr_talk, 0, x, y -16);  // Draw the "talk" sprite above the NPC (16 pixels above)
}

// Draw the shadow (so the NPC has a shadow under it, potentially to improve visual appearance)
draw_shadow();

// Call the NPC's default drawing function to render it again (this ensures the NPC itself is drawn)
draw_self();