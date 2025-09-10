function draw_shadow(_offset=0)
{
    // Draws a shadow sprite slightly below the object's position
    draw_sprite_ext(spr_shadow, 0, x, y+_offset, 1, 1, 0, -1, 0.4);
}
