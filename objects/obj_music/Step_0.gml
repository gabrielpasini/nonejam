if instance_exists(obj_controle) {
	if vitoria == 0 && obj_controle.fim_jogo == 1 {
		audio_stop_all();
		audio_play_sound(aud_vitoria, 1, true);
		vitoria = 1;
	}
}

