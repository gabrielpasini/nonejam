function scr_personagem_movendo() {
	//Movimentacao
	direita = keyboard_check(ord("D"));
	esquerda = keyboard_check(ord("A"));
	cima = keyboard_check_pressed(ord("W"));
	
	hveloc = (direita - esquerda) * veloc;
	
	if direita {
		direc = 0;
		sprite_index = spr_personagem_andando;
		image_xscale = 1;
	} else if esquerda {
		direc = 1;
		sprite_index = spr_personagem_andando;
		image_xscale = -1;
	} else {
		if direc == 0 {
			sprite_index = spr_personagem_parado;
			image_xscale = 1;
		} else if direc == 1 {
			sprite_index = spr_personagem_parado;
			image_xscale = -1;
		}
	}
	
	if !place_meeting(x, y + 1, obj_parede) {
		vveloc += gravidade;
	} else {
		if cima {
			vveloc = pulo;
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
	
	if keyboard_check_pressed(vk_space) {
		image_index = 0;
		estado = scr_personagem_atacando;
		
		if direc == 0 {
			instance_create_layer(x + 20, y - 64, "Instances", obj_ataque);
		} else if direc == 1 {
			instance_create_layer(x - 20, y - 64, "Instances", obj_ataque);
		}
	}
}

function scr_personagem_atacando() {
	if direc == 0 {
		sprite_index = spr_personagem_ataque;
		image_xscale = 1;
	} else if direc == 1 {
		sprite_index = spr_personagem_ataque;
		image_xscale = -1;
	}
	
	if src_fim_animacao() {
		estado = scr_personagem_movendo;
	}
}