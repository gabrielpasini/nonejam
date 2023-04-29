/// @description

// Get dimensions
//var vWidth = camera_get_view_width(view_camera[0]);
//var vHeight = camera_get_view_height(view_camera[0]);
// Create camera
// camera = camera_create_view(0, 0, vWidth, vHeight, 0, -1, -1, 128, 128);
// view_set_camera(0, camera);

// Using the preconfigured camera
camera = view_get_camera(0)

// Camera following vars
follow = noone;
moveToX = x;
moveToY = y;

// Hor fast the camera pans
cameraPanSpeedInitial = 0.15;
cameraPanSpeed = 1;

// Reset the camera to default pan speed
alarm[CAMERA_RESET] = 3;

// Move onto main room
room_goto_next();