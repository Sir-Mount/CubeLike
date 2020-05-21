///@description TripleShoot()

ScreenShake(6, 25);

with(instance_create_layer(x, y, "Bullets", Obullet)){
	speed = 15;
	direction = other.image_angle - other.tripleAngle + random_range(-other.spread * 2, other.spread * 2);
	image_angle = direction;
}

AudioPlaySfx(SNshoot, 50, 0.9, 0.35);

with(instance_create_layer(x, y, "Bullets", Obullet)){
	speed = 15;
	direction = other.image_angle + random_range(-other.spread * 2, other.spread * 2);
	image_angle = direction;
}

AudioPlaySfx(SNshoot, 25, 0.9, 0.35);

with(instance_create_layer(x, y, "Bullets", Obullet)){
	speed = 15;
	direction = other.image_angle + other.tripleAngle + random_range(-other.spread * 2, other.spread * 2);
	image_angle = direction;
}

AudioPlaySfx(SNshoot, 25, 0.9, 0.35);

for(i = 0; i< 3; i++){
	with(instance_create_layer(x, y, "Shells", Oshell)){
		randRot = random_range(-10, 10);
		randLen = random_range(5, 7);
		hsp -= lengthdir_x(randLen - other.shooter.hsp, other.image_angle + randRot);
		vsp -= lengthdir_y(randLen - other.shooter.vsp, other.image_angle + randRot);
	}
}

firingDelay = maxFiringDelay * 1.5;