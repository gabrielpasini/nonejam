function scr_player2_movendo() {
	direita = keyboard_check(vk_right);
	esquerda = keyboard_check(vk_left);
	// cima = keyboard_check_pressed(vk_space);
	cima = keyboard_check_pressed(vk_up);
	no_chao = place_meeting(x, y + 1, obj_parede);
	
	// ataque = mouse_check_button_pressed(mb_left);
	ataque = 0;
	
	hveloc = (direita - esquerda) * veloc;
	
	if (direita) {
		direc = 0;
		sprite_index = spr_player2_andando;
		image_xscale = 1;
	} else if (esquerda) {
		direc = 1;
		sprite_index = spr_player2_andando;
		image_xscale = -1;
	} else {
		sprite_index = spr_player2_parado;
		if direc == 0 {
			image_xscale = 1;
		} else if direc == 1 {
			image_xscale = -1;
		}
	}
	
	if !no_chao {
		if direc == 0 {
			if pulou == 2 {
				sprite_index = spr_player2_pulo_duplo;
			} else {
				sprite_index = spr_player2_pulo;
			}
			image_xscale = 1;
		} else if direc == 1 {
			if pulou == 2 {
				sprite_index = spr_player2_pulo_duplo;
			} else {
				sprite_index = spr_player2_pulo;
			}
			image_xscale = -1;
		}
		
		if cima && pulou == 1 {
			vveloc = pulo;
			pulou += 1;
		}
		
		vveloc += gravidade;
	} else {
		pulou = 0;
		if cima && pulou == 0 {
			vveloc = pulo;
			pulou += 1;
		}
	}
	
	if place_meeting(x + hveloc, y, obj_parede) {
		while !place_meeting(x + sign(hveloc), y, obj_parede) {
			x += sign(hveloc);
		}
		hveloc = 0;
	}
	x += hveloc;
	
	if place_meeting(x, y + vveloc, obj_parede) {
		while !place_meeting(x, y + sign(vveloc), obj_parede) {
			y += sign(vveloc);
		}
		vveloc = 0;
	}
	y += vveloc;
	
	 if ataque && no_chao {
		image_index = 0;
		estado = scr_player2_atacando;
		
		if direc == 0 {
			instance_create_layer(x + 20, y - 24, "Instances", obj_ataque);
		} else if direc == 1 {
			instance_create_layer(x - 20, y - 24, "Instances", obj_ataque);
		}
	}
}

function scr_player2_atacando() {
	if direc == 0 {
		sprite_index = spr_player2_ataque;
		image_xscale = 1;
	} else if direc == 1 {
		sprite_index = spr_player2_ataque;
		image_xscale = -1;
	}
	
	if src_fim_animacao() {
		estado = scr_player2_movendo;
	}
}