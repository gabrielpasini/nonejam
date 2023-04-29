function get_input() {
	up = keyboard_check(ord("W"));
	left = keyboard_check(ord("A"));
	down = keyboard_check(ord("S"));
	right = keyboard_check(ord("D"));
	action = keyboard_check(ord("E"));
	
	attack_up = keyboard_check(vk_up);
	attack_left = keyboard_check(vk_left);
	attack_down = keyboard_check(vk_down);
	attack_right = keyboard_check(vk_right);
}

function player_calc_movement() {
	var _hmove = right - left;
	var _vmove = down - up;
	
	if (_hmove == 0 && _vmove == 0) return false;
	
	target_x = x + _hmove;
	target_y = y + _vmove;
		
	var _dir = point_direction(x, y, target_x, target_y);

	target_x += lengthdir_x(sp, _dir);
	target_y += lengthdir_y(sp, _dir);
	
	return true;
}

function player_animate() {
	sprite_index = spriteList[state];
	
	if (left != 0 || right != 0) {
		facing = sign(right - left) == 0 ? 1 : sign(right - left);
		image_xscale = facing;
	}
}

function player_animate_death() {
	if (image_index < image_number - 1) {
		sprite_index = spriteList[state];
	} else {
		image_speed = 0;
	}
}

function player_attack() {
	if (can_attack) {
		can_attack = false;
		var _hdir = (attack_left - attack_right);
		var _vdir = (attack_down - attack_up);
		if (_hdir > 0) var _dir = 180;
		if (_hdir < 0) var _dir = 0;
		if (_vdir > 0) var _dir = 270;
		if (_vdir < 0) var _dir = 90;

		if (_hdir != 0 || _vdir != 0) {
			var _inst = instance_create_layer(x, y, "Instances_pellets", oPellet);
			_inst.speed = 3;
			_inst.direction = _dir;
			_inst.owner_id = self;
			
			alarm[PA_ATTACK_RATE_RESET] = attack_rate;
		}
	}
}
