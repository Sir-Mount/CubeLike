audio_group_stop_all(BG);
audio_group_stop_all(SFX);

if (audio_group_is_loaded(BG)){
	audio_group_unload(BG);
}

if (audio_group_is_loaded(SFX)){
	audio_group_unload(SFX);
}

game_restart();
