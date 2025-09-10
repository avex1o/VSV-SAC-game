// Adjust depth of all instances based on their bottom position for proper layering
with (all)
{
    depth = -bbox_bottom; // Objects lower on the screen appear in front
}

// Get the current camera (view) ID
var _cam = view_camera[0];

// Get the width and height of the camera's view
var _cam_width = camera_get_view_width(_cam);
var _cam_height = camera_get_view_height(_cam);

// Calculate top-left position of the camera to center it on the player
var _cam_x = x - _cam_width/2;
var _cam_y = y - _cam_height/2;

// Clamp the camera position so it doesn't go outside the room boundaries
_cam_x = clamp(_cam_x, 0, room_width - _cam_width);
_cam_y = clamp(_cam_y, 0, room_height - _cam_height);

// Update the camera position
camera_set_view_pos(_cam,_cam_x,_cam_y);
