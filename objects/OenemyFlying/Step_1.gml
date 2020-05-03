if(hp <= 0){
	ScreenShake(6, 35);
	
	for(i = 0; i < 6; i++){
		part_particles_create(Oinit.particleSystem, 
		random_range(x - (sprite_width/2), x + (sprite_width/2)),
		random_range(y - sprite_height, y),
		Oinit.particleType_enemy_hit, 6);
	}
	
	with(instance_create_layer(x, y, "Enemys", OenemyDead)){
		sprite_index = SenemyFlyingDead;
		
		hsp = lengthdir_x(10, -other.hitFrom);
		vsp = lengthdir_y(10, other.hitFrom);
	}
	
	instance_destroy();
}