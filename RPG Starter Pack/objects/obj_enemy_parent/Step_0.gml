// If a dialog box is currently active, stop further code execution
if (instance_exists(obj_dialog)) exit;

// If alarm[1] is still running (>= 0), apply knockback offset to target position
if (alarm[1] >= 0)
{
    target_x = x + kb_x;
    target_y = y + kb_y;
}

// Calculate horizontal movement direction, clamped between -1 (left) and 1 (right)
var _hor = clamp(target_x - x, -1, 1);

// Calculate vertical movement direction, clamped between -1 (up) and 1 (down)
var _ver = clamp(target_y - y, -1, 1);

// Move the object in the calculated direction with collision handling
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);
