// Set movement speed
move_speed = 1;

// Reference to the wall tilemap (for collisions)
tilemap = layer_tilemap_get_id("Tiles_Walls");

// Base stats
hp = 10;         
hp_total = hp;    
dmg = 1;            

// Facing direction set to default
facing = 0;

// Leveling + XP system
lvl = 1;           
xp = 0;             
xp_require = 100; 

// Attack cooldown counter
atk_cooldown = 0;

// Function to add experience points and handle level-ups
function add_xp(_xp_to_add)
{
    // Add experience
    xp += _xp_to_add;

    // Check if enough XP has been gained to level up
    if (xp >= xp_require)
    {
        lvl++;                  
        xp -= xp_require;       // Carry over excess XP
        xp_require *= 1.25;     // Increase XP requirement (progressive scaling)    

        // Stat scaling on level up
        hp_total *= 1.05;       
        hp = hp_total;          
        dmg *= 1.125;           

        // Show a dialog box congratulating the player + new stats
        create_dialog([
        {    
            name: "Congrats",
            msg: $"You levelled up! New stats:\nLVL: {lvl}\nDMG: {dmg}\nHP: {hp} "
        }
        ])
    }
}
