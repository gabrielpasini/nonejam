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
	pega = 0;
} else {
	image_alpha = 1;
}

if alarm[0] == 1 {
	pega = 1;
}