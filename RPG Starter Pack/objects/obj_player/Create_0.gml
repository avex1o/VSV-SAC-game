move_speed = 1;

tilemap = layer_tilemap_get_id("Tiles_Walls");

hp = 10;
hp_total = hp;
dmg = 1;

facing = 0;

lvl = 1;
xp = 0;
xp_require = 100;

function add_xp(_xp_to_add)
{
    xp += _xp_to_add;
    if (xp >=xp_require)
    {
        level++;
        xp -= xp_require;
        xp_require *= 1.25;
        
        hp_total += 5;
        hp = hp_total;
        dmg += 0.5;
    }
}