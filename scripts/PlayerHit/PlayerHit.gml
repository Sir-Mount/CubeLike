///@description PlayerHit()
function PlayerHit() {

	hp--;

<<<<<<< Updated upstream
AudioPlaySfx(SNhitCharacter, 60, 1, 0.3);
ScreenShake(6, 25);
ScreenFlash(0.5, 0.05, c_white);
=======
	AudioPlaySfx(SNhitCharacter, 60, 1, 0.3);
	ScreenShake(6, 25);
	ScreenFlash(0.5, 0.05, c_white);
>>>>>>> Stashed changes

	for(i = 0; i < 5; i++){
		part_particles_create(Oinit.particleSystem, x, y,
		Oinit.particleType_hit, 3);
	}


}
