x = shooter.x;
y = shooter.y - 13;

target = shooter.target;

if(instance_exists(target)){
	image_angle = point_direction(x, y, target.x, target.y - 16);


	///Shooting
	firingDelay--;
	recoil = max(0, recoil - 1);

	if (distance_to_object(target) < 352 && firingDelay < 0){
		firingDelay = maxFiringDelay;
		recoil = 8;
		with(instance_create_layer(x, y, "Bullets", OenemyBullet)){
			ScreenShake(3, 20);
			speed = 6;
			direction = other.image_angle + random_range(-3.5, 3.5);
			image_angle = direction;
		}
	
		with(instance_create_layer(x, y, "Shells", Oshell)){
			sprite_index = SenemyShell;
			
			hsp -= lengthdir_x(6, other.image_angle);
			vsp -= lengthdir_y(6, other.image_angle);
		}
		
		with(shooter){
			recoilhsp -= lengthdir_x(10, other.image_angle);
			recoilvsp -= lengthdir_y(2, other.image_angle);
		}
	
		part_type_direction(Oinit.particleType_enemy_shoot, image_angle - 32, image_angle + 32, false, false);
	
		for(i = 0; i < 6; i++){
			part_particles_create(Oinit.particleSystem, 
			x + lengthdir_x(25, image_angle), 
			y + lengthdir_y(25, image_angle),
			Oinit.particleType_enemy_shoot, 3);
		}
	}
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);