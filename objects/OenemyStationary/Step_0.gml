if(hitpause > 0){
	hitpause--;
}else{
	// Gravity
	if (vsp < 8) vsp += grav;

	// Friction
	hsp = lerp(0, hsp, 0.25);
	
	hsp += recoilhsp;
	vsp += recoilvsp;

	recoilhsp = lerp(0, recoilhsp, 0.3);
	recoilvsp = lerp(0, recoilvsp, 0.3);
	
	// Horizontal collision
	if (place_meeting(x + hsp, y, Owall)) {
		while(!place_meeting(x + sign(hsp), y, Owall)) {
		    x += sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;
    
	// Vertical collision
	if (place_meeting(x ,y + vsp, Owall)) {
		while(!place_meeting(x ,y + sign(vsp), Owall)) {
		    y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
	
	if(instance_exists(target)){
		// Direction
		targetDir = point_direction(x, y, target.x, target.y);
	}
}

// Particles
part_particles_create(Oinit.particleSystem,
random_range(x - (sprite_width/2) - 10, x + (sprite_width/2) + 10),
random_range(y - sprite_height - 10, y + 10),
Oinit.particleType_enemy, ProbChance(1, 30, 0, 70));

// Move back to normal scale
xscale = lerp(xscale, image_xscale, 0.1);
yscale = lerp(yscale, image_yscale, 0.1);