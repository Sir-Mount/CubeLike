///@description PlayerHit()

hp--;

ScreenShake(6, 25);
ScreenFlash(0.5, 0.05, c_white);

for(i = 0; i < 5; i++){
	part_particles_create(Oinit.particleSystem, x, y,
	Oinit.particleType_hit, 3);
}