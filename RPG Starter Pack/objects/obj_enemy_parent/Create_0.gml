// Set the initial target position to the current object position
target_x = x;
target_y = y;

// Set alarm[0] to trigger after 60 steps (1 second at 60 FPS)
alarm[0] = 60;

// Get the ID of the tilemap from the "Tiles_Walls" layer
tilemap = layer_tilemap_get_id("Tiles_Walls");

// Initialize knockback values (x and y) to 0
kb_x = 0;
kb_y = 0;
