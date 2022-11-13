<<<<<<< Updated upstream:objects/OenemyBullet/Collision_40ee8d77-87a8-4b5e-8eba-bd2473621ba8.gml

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
	recoilvsp += lengthdir_y(16, other.direction);
	
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
	recoilvsp += lengthdir_y(16, other.direction);
	
	xscale = image_xscale * 0.75;
	yscale = image_yscale * 0.75;
	
	hitFrom = other.direction;
}
	
>>>>>>> Stashed changes:objects/OenemyBullet/Collision_OenemyFlying.gml
instance_destroy();