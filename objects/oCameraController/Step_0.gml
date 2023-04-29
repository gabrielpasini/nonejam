/// @description

// Move towards moveToX and moveToY
x = lerp(x, moveToX, cameraPanSpeed);
y = lerp(y, moveToY, cameraPanSpeed);

// Set the view position
var vCenterViewWidth = x - camera_get_view_width(camera) / 2;
var vCenterViewHeight = y - camera_get_view_height(camera) / 2;

camera_set_view_pos(camera, vCenterViewWidth, vCenterViewHeight);

if (follow != noone) {
	moveToX = follow.x;
	moveToY = follow.y;
}

// Make the camera to not to move to the outside of the room
var xx = clamp(camera_get_view_x(camera), 0, room_width - camera_get_view_width(camera));
var yy = clamp(camera_get_view_y(camera), 0, room_height - camera_get_view_height(camera));

camera_set_view_pos(camera, xx, yy);