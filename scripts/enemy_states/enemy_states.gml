function enemy_idle_state() {
	entity_calc_roam_movement();
	if (target_x || target_y) state = states.MOVE;
	entity_animate();
}

function enemy_move_state() {
	entity_calc_roam_movement();
	if (target_x || target_y) {
		entity_move_towards_target();
	} else {
		state = states.IDLE;
	}
	entity_animate();
}