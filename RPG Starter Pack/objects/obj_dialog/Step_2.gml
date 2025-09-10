// Exit if no message is currently active
if (current_msg < 0) exit;

// Get the string of the current message
var _str = msgs[current_msg].msg;

// Typewriter effect: show characters one by one
if (current_char < string_length(_str))
{
    // Increase current_char by char_speed
    // If input key is held, speed up typing
    current_char += char_speed * (1 + real(keyboard_check_pressed(input_key)));
    
    draw_msg = string_copy(_str, 0, current_char);
}
else if(keyboard_check_pressed(input_key))
{
    // Move to next message when Enter is pressed
    current_msg++;
    
    // If all messages have been shown, destroy the dialog
    if (current_msg >= array_length(msgs))
    {
        instance_destroy();
        
        // If flagged, go to the next room
        if(next_room) room_goto_next();
    }
    else
    {
        // Reset character index for the next message
        current_char = 0;
    }
}
