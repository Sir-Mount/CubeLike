if(audio_group_is_loaded(BG) && !audio_is_playing(music_playing)){
	audio_play_sound(music_playing, 100, true);
	control = true;
}

if(audio_group_is_loaded(SFX)){
	sfxLoaded = true;
}


