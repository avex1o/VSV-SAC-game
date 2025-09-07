if (current_msg < 0) exit;
    
var _str = msgs[current_msg].msg;

if (current_char < string_length(_str))
{
    current_char += char_speed * (1 + real(keyboard_check_pressed(input_key)));
    draw_msg = string_copy(_str, 0, current_char);
}
else if(keyboard_check_pressed(input_key))
{
    current_msg++;
    if (current_msg >= array_length(msgs))
    {
        instance_destroy();
        
        if(next_room) room_goto_next();
    }
    else
    {
    current_char = 0;
    }
}
