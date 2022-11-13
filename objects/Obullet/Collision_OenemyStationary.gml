<<<<<<< Updated upstream:objects/Obullet/Collision_d4b9abc1-cef9-42dd-ab80-cc3a56ba82d6.gml

AudioPlaySfx(SNhitCharacter, 60, 1, 0.3);
ScreenShake(5, 20);

for(i = 0; i < 5; i++){
	part_particles_create(Oinit.particleSystem, x, y,
	Oinit.particleType_hit, 3);
}

with(other){
	hp--;
	flash = 3;
	
	hitpause = 3;
	
	recoilhsp += lengthdir_x(16, other.direction);
	recoilvsp += lengthdir_y(3, other.direction);
	
	xscale = image_xscale * 0.75;
	yscale = image_yscale * 0.75;
	
	hitFrom = other.direction;
}
	
=======
AudioPlaySfx(SNhitCharacter, 60, 1, 0.3);
ScreenShake(5, 20);

for(i = 0; i < 5; i++){
	part_particles_create(Oinit.particleSystem, x, y,
	Oinit.particleType_hit, 3);
}

with(other){
	hp--;
	flash = 3;
	
	hitpause = 3;
	
	recoilhsp += lengthdir_x(16, other.direction);
	recoilvsp += lengthdir_y(3, other.direction);
	
	xscale = image_xscale * 0.75;
	yscale = image_yscale * 0.75;
	
	hitFrom = other.direction;
}
	
>>>>>>> Stashed changes:objects/Obullet/Collision_OenemyStationary.gml
instance_destroy();