script_execute(estado);

//Combate
if alarm[0] > 0 {
	if image_alpha >= 1 {
		alfa_hit = -0.2;
	} else if image_alpha <= 0 {
		alfa_hit = 0.2;
	}
	
	image_alpha += alfa_hit;
} else {
	image_alpha = 1;
}