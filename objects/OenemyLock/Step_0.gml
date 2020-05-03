if(!instance_exists(OenemyFlying) && !instance_exists(OenemyStationary)){ 
	for(i = 0; i < 10; i++){
		part_particles_create(Oinit.particleSystem,
		random_range(x - (sprite_width/2) - 30, x + (sprite_width/2) + 30), 
		random_range(y - (sprite_height/2), y + (sprite_height/2)), 
		Oinit.particleType_lock, 4);
	}
	
	ScreenShake(7, 40);
	
	instance_destroy();
}