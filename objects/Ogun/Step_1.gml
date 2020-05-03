x = shooter.x;
y = shooter.y - 13;

image_angle = point_direction(x, y, mouse_x, mouse_y);



///Shooting
firingDelay--;
recoil = max(0, recoil - 1);

if(!hold){
	if(mouse_check_button_pressed(mb_left)) shoot = true;
}else{
	if(mouse_check_button(mb_left)) shoot = true;
}

if (shoot && firingDelay < 0){
	firingDelay = maxFiringDelay;
	recoil = 8;
	
	switch(shootStyle){
		case "normal":
		default:
			NormalShoot();
		break;
		case "triple":
			TripleShoot();
		break;
	}
	
	with(shooter){
		recoilhsp -= lengthdir_x(4, other.image_angle);
		recoilvsp -= lengthdir_y(2, other.image_angle);
	}
	
	part_type_direction(Oinit.particleType_shoot, image_angle - 32, image_angle + 32, false, false);
	
	for(i = 0; i < 6; i++){
		part_particles_create(Oinit.particleSystem, 
		x + lengthdir_x(25, image_angle), 
		y + lengthdir_y(25, image_angle),
		Oinit.particleType_shoot, 3);
	}
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

shoot = false;