if(place_meeting(x, y, Owall)){ 
	
	AudioPlaySfx(SNhitRock, 40, 0.9, 0.2);
<<<<<<< Updated upstream
	
=======
>>>>>>> Stashed changes
	ScreenShake(2, 15);
	for(i = 0; i < 5; i++){
		part_particles_create(Oinit.particleSystem, x, y,
		Oinit.particleType_hit, 3);
	}
	
	instance_destroy();
}
