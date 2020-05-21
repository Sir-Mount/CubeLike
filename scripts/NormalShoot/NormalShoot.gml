///@description NormalShoot()

with(instance_create_layer(x, y, "Bullets", Obullet)){
	ScreenShake(3, 20);
	speed = 15;
	direction = other.image_angle + random_range(-other.spread, other.spread);
	image_angle = direction;
}

with(instance_create_layer(x, y, "Shells", Oshell)){
	hsp -= lengthdir_x(6 - other.shooter.hsp, other.image_angle);
	vsp -= lengthdir_y(6 - other.shooter.vsp, other.image_angle);
}

AudioPlaySfx(SNshoot, 50, 0.9, 0.3);