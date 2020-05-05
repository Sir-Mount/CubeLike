if (!audio_group_is_loaded(BG)){
	audio_group_load(BG);
}

if (!audio_group_is_loaded(SFX)){
	audio_group_load(SFX);
}

audio_group_set_gain(BG, musicVol, 0);
audio_group_set_gain(SFX, SfxVol, 0);