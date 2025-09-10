// Transfer carried data from obj_carry_data to the player in a different room
with (obj_carry_data)
{
    //Sets all the values from previous level/room
    other.lvl = lvl;               
    other.xp = xp;                  
    other.xp_require = xp_require;  
    other.dmg = dmg;                
    other.hp_total = hp_total;     
    other.hp = hp_total;         

    // Destroy this carry data object after transferring
    instance_destroy();
}
