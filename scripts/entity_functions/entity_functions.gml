function entity_calc_roam_movement() {
	if (mouse_check_button_pressed(mb_left)) {
		/*
		//Move towards mouse click
		target_x = mouse_x;
		target_y = mouse_y;
		facing = sign(target_x - x);
		
		*/
		
		//Generate random movement
		var _dis = choose(16, 32, 64);
		var _dir = choose(0, 45, 90, 135, 180, 225, 270, 315);
		
		target_x = x + lengthdir_x(_dis, _dir);
		target_y = y + lengthdir_y(_dis, _dir);
		
		if (sign(target_x - x) != 0) facing = sign(target_x - x);
		
		
		debug("[x, y] : " + string(target_x) + ", " + string(target_y));
	}
}

function entity_move_towards_target() {
	move_towards_point(target_x, target_y, sp);
	if (point_distance(x, y, target_x, target_y) <= 1) {
		target_x = undefined;
		target_y = undefined;
		speed = 0;
	}
}
	
function entity_animate() {
	sprite_index = spriteList[state];
	image_xscale = facing;
}

function entity_collide() {
	// Set target values
	var _tx = x;
	var _ty = y;
	
	// Move back to last step position out of collision
	x = xprevious;
	y = yprevious;
	
	// Get max distance we want to move
	var _distanceX = round(abs(_tx - x));
	var _distanceY = round(abs(_ty - y));
	
	// Ensure we are using integers if we are colliding in the x/y axis
	if (place_meeting(x + _distanceX * sign(_tx - x), y, oSolid)) {
		x = round(x);
	}
	
	if (place_meeting(x, y + _distanceY * sign(_tx - y), oSolid)) {
		y = round(y);
	}
	
	// Move as far as we can in x and y before hitting the solid
	repeat(_distanceX) {
		if (!place_meeting(x + sign(_tx - x), y, oSolid)) {
			x += sign(_tx - x);
		}
	}
	
	repeat(_distanceY) {
		if (!place_meeting(x, y + sign(_ty - y), oSolid)) {
			y += sign(_ty - y);
		}
	}
}