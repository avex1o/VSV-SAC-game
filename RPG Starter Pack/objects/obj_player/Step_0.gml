// Get horizontal input 
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));

// Get vertical input 
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Check if there’s any input at all
var _len = _hor!=0 || _ver!=0;

// Get movement direction based on input
var _dir = point_direction(0,0,_hor,_ver);

// Normalize movement into proper x/y values
_hor = lengthdir_x(_len,_dir);
_ver = lengthdir_y(_len,_dir);

// Move the player, handling collisions with tilemap
move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

// If moving, update walking sprite + facing direction
if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
    
    // Facing direction used for attack angle
    facing = point_direction(0, 0, _hor, _ver);
}
else 
{
    // If not moving, switch to idle version of the current sprite
	if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
}

// Attack with SPACE if cooldown is ready
if (keyboard_check_pressed(vk_space) && atk_cooldown <= 0)
{
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    _inst.image_angle = facing;   // Attack direction matches facing
    _inst.dmg = dmg;              
    atk_cooldown = 60;            // Reset attack cooldown (1 second @ 60 FPS)
}

// Tick down attack cooldown
if (atk_cooldown > 0) 
{
    atk_cooldown--;	
}

// Disable movement + enemies while dialog is active
if (instance_exists(obj_dialog)) 
{ 
    move_speed = 0;
    instance_deactivate_object(obj_enemy_parent);
}
else {
	move_speed = 1;
    instance_activate_object(obj_enemy_parent);
}


if keyboard_check_pressed(vk_lshift)
{
    global.Saved = true;
    game_save("Save.dat");
}

// Load game with Ctrl (only if a save exists)
if keyboard_check_pressed(vk_control)
{
    if(global.Saved) game_load("Save.dat")
}
