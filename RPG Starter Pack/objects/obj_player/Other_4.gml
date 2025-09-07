with (obj_carry_data)
{
    other.lvl = lvl;
    other.xp = xp;
    other.xp_require = xp_require;
    other.dmg = dmg;
    other.hp_total = hp_total;
    other.hp = hp_total;
    
    instance_destroy();
}