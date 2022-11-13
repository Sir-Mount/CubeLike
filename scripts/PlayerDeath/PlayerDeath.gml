///@description PlayerDeath()
function PlayerDeath() {
	
	with(Oaudio){
		var SN = audio_play_sound(SNgameOver, 100, false);
		audio_sound_gain(SN, global.SfxVol, 0);
		audio_sound_pitch(SN, 0.75);
	}


<<<<<<< Updated upstream
with(Oaudio){
	var SN = audio_play_sound(SNgameOver, 100, false);
	audio_sound_gain(SN, global.SfxVol, 0);
	audio_sound_pitch(SN, 0.75);
}

ScreenShake(6, 30);
ScreenFlash(0.5, 0.03, c_white);
=======
	ScreenShake(6, 30);
	ScreenFlash(0.5, 0.03, c_white);
>>>>>>> Stashed changes

	for(i = 0; i < 8; i++){
		part_particles_create(Oinit.particleSystem, 
		random_range(x - (sprite_width/2), x + (sprite_width/2)),
		random_range(y - sprite_height, y),
		Oinit.particleType_death, 8);
	}

	with(gun){instance_destroy()}
	
	instance_destroy();

	//game_restart();



}
