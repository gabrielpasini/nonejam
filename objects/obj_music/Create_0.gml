vitoria = 0;

if (room == Room3_menu) {
	audio_stop_all();
	audio_play_sound(aud_musicamenu, 1, true);
} else if (room == Room2) {
	audio_stop_all();
	
	if (!audio_is_playing(aud_musicajogo)) {
		audio_play_sound(aud_musicajogo, 1, true);
	}
}