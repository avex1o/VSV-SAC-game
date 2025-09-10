// Initialize dialog/message system variables
msgs = [];             
current_msg = -1;      // Index of the current message (-1 = no message yet)
current_char = 0;      // Current character index for typewriter effect
draw_msg = "";         

// Dialog display settings
char_speed = 0.5;      // Speed of characters appearing (typewriter effect)
input_key = vk_enter;  // Key to advance dialog

// GUI dimensions
gui_w = display_get_gui_width();   
gui_h = display_get_gui_height();  

// Room transition flag
next_room = false;     // Set to true when dialog triggers moving to next room
