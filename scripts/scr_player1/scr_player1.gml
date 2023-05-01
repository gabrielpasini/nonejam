function scr_player1_movendo() {
	direita = keyboard_check(ord("D"));
	esquerda = keyboard_check(ord("A"));
	cima = keyboard_check_pressed(ord("W"));
	no_chao = place_meeting(x, y + 1, obj_parede);
	ataque = keyboard_check_pressed(ord("F"));
	
	hveloc = (direita - esquerda) * veloc;
	
	if (direita) {
		direc = 0;
		sprite_index = spr_player1_andando;
		image_xscale = 1;
	} else if (esquerda) {
		direc = 1;
		sprite_index = spr_player1_andando;
		image_xscale = -1;
	} else {
		sprite_index = spr_player1_parado;
		if direc == 0 {
			image_xscale = 1;
		} else if direc == 1 {
			image_xscale = -1;
		}
	}
	
	if !no_chao {
		if direc == 0 {
			if pulou == 2 {
				sprite_index = spr_player1_pulo_duplo;
			} else {
				sprite_index = spr_player1_pulo;
			}
			image_xscale = 1;
		} else if direc == 1 {
			if pulou == 2 {
				sprite_index = spr_player1_pulo_duplo;
			} else {
				sprite_index = spr_player1_pulo;
			}
			image_xscale = -1;
		}
		
		if cima && pulou == 1 {
			audio_play_sound(aud_pulo, 2, false);
			vveloc = pulo;
			pulou += 1;
		}
		
		vveloc += gravidade;
	} else {
		pulou = 0;
		if cima && pulou == 0 {
			audio_play_sound(aud_pulo, 2, false);
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
	
	 if ataque && no_chao && bomba == 0 && !pega {
		if direc == 0 {
			instance_create_layer(x - 20, y - 16, "Instances", obj_bomb);
		} else if direc == 1 {
			instance_create_layer(x + 20, y - 16, "Instances", obj_bomb);
		}
		bomba = 1;
	}
}