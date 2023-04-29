// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_idle_state() {
	get_input();

	if (player_calc_movement()) state = states.MOVE;
	
	if (action) {
		image_index = 0;
		state = states.DEAD;
	}
	
	if (attack_up || attack_down || attack_left || attack_right) player_attack();

	player_animate();
}

function player_move_state() {
	get_input();

	if (!player_calc_movement()) state = states.IDLE;
	if (attack_up || attack_down || attack_left || attack_right) player_attack();
	
	entity_move_towards_target();

	player_animate();
}

function player_dead_state() {
	get_input();
	
	player_animate_death();	
}