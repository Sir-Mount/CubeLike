switch(sprite_index){
	case SlaserSight:
		with(other.gun){
			laser = true;
			maxFiringDelay = 8;
			spread = 0;
		}
	break;
	
	case StripleBarrel:
		with(other.gun){
			shootStyle = "triple";
		}
	break;
	
	case SextraLife:
		with(other){
			hp++;
		}
	break;
	
	case SholdToShoot:
		with(other.gun){
			hold = true;
		}
	break;
}

ScreenShake(4, 25);
ScreenFlash(0.25, 0.01, c_purple);

AudioPlaySfx(SNbell, 100, 1, 0.15);

for(i = 0; i < 7; i++){
	part_particles_create(Oinit.particleSystem,
	random_range(x - (sprite_width/2) - 15, x + (sprite_width/2) + 15), 
	random_range(y + 30, y + 32),
	Oinit.particleType_pick_up, 5);
}

instance_destroy();