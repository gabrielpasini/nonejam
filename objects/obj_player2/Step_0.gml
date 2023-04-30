script_execute(estado);

//Combate
if alarm[0] > 0 {
	if image_alpha >= 1 {
		alfa_hit = -0.2;
	} else if image_alpha <= 0 {
		alfa_hit = 0.2;
	}
	
	image_alpha += alfa_hit;
	obj_player1.pega = 0;
	paralizado = 1;
	pega = 0;
	veloc = 0;
	pulo = 0;
	bomba = 1;
	sprite_index = spr_player2_dano;
} else {
	image_alpha = 1;
	paralizado = 0;
	pulo = tamanho_pulo;
	if pega {
		veloc = initial_veloc_pega;
	} else {
		veloc = initial_veloc;
	}
}

if alarm[0] == 1 {
	pega = 1;
}

if dano == 1 {
	if alarm[1] <= 0 {
		alarm[1] = 30;
	}
}

if alarm[1] > 0 {
	sprite_index = spr_player2_dano;
}

if alarm[1] == 1 {
	dano = 0;
}
