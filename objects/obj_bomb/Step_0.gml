if alarm[0] == 60 {
	instance_destroy();
	obj_player1.bomba = 0;
	obj_player2.bomba = 0;
	instance_create_layer(x, y, "Instances", obj_ataque);
	instance_create_layer(x, y, "Instances", obj_explosao);
}