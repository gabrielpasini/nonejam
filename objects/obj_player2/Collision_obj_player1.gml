if obj_player1.pega == 1 && obj_controle.fim_jogo == 0 {
	if alarm[0] <= 0 {
		audio_play_sound(aud_dano, 3, false);
		vida -= 1;
		alarm[0] = 120;
	}
}
