if place_meeting(x + veloc, y, obj_parede_inimigo) {
	while !place_meeting(x + sign(veloc), y, obj_parede_inimigo) {
		x += sign(veloc);
	}
	if direc == 0 {
		direc = 1;
	} else if direc == 1 {
		direc = 0;
	}
}

if direc == 0 {
	sprite_index = spr_inimigo1_andando;
	image_xscale = 1;
	x += veloc;
} else if direc == 1 {
	sprite_index = spr_inimigo1_andando;
	image_xscale = -1;
	x -= veloc;
}

if vida <= 0 {
	instance_destroy();
}