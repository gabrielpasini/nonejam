if obj_player2.pega == 1 && obj_controle.fim_jogo == 0 {
	if alarm[0] <= 0 {
		vida -= 1;
		alarm[0] = 120;
	}
}