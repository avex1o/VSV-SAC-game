// If a dialogue instance already exists, exit the function (prevent multiple dialogs)
if (instance_exists(obj_dialog)) exit;

// Check if the player is within a certain distance (8 pixels) of the NPC
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8 ) 
{
    // Allow interaction with the NPC
    can_talk = true;

    // If the input key (Enter) is pressed, initiate dialogue creation
    if (keyboard_check_pressed(input_key)) 
    {
        create_dialog(dialog);  // Create the dialogue instance

        // If this is the final NPC, set the next room flag to true for the dialogue, so that you can travel to next room after ending dialogue
        if(final_npc) obj_dialog.next_room = true;
    }
}
else
{
    // If the player is not close enough, it sets this variable to false, making the player unable to talk with the NPC
    can_talk = false;
}