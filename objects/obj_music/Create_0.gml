
if (room == Room3_menu)
{
	audio_play_sound(aud_musicamenu,10,true);
}
else if (room == Room2)
{
	audio_stop_sound(aud_musicamenu);
	
		if (!audio_is_playing(aud_musicajogo))
		{
		audio_play_sound(aud_musicajogo,10,true);
		}
}