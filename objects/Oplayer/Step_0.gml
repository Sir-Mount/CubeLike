key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W")) || keyboard_check(vk_space);
//key_run = keyboard_check(vk_shift);

moveH =  key_right - key_left;
hsp = moveH * movespeed;

// Jumping
canJump -= 1;
if (canJump > 0 && key_up){
	for(i = 0; i < 6; i++){
		part_particles_create(Oinit.particleSystem,
		random_range(x - (sprite_width/2) - 15, x + (sprite_width/2) + 15), 
		random_range(y - 2, y),
		Oinit.particleType_jump, 3);
	}
	
	xscale = image_xscale * 0.5;
	yscale = image_yscale * 1.3;
	
	ScreenShake(2, 5);
	//var jumpSN = audio_play_sound(SNjump, 100, false);
	//audio_sound_pitch(jumpSN, random_range(0.75, 1.35));
	vsp = -jumpspeed;
	canJump = 0;
}

hsp += recoilhsp;
vsp += recoilvsp;

recoilhsp = lerp(0, recoilhsp, 0.3);
recoilvsp = lerp(0, recoilvsp, 0.3);

//gravity
if (vsp < 8) vsp += grav;


// horizontal collision
if (place_meeting(x + hsp, y, Owall))
{
    while(!place_meeting(x + sign(hsp), y, Owall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;
    
// vertical collision
if (place_meeting(x ,y + vsp, Owall))
{
    while(!place_meeting(x ,y + sign(vsp), Owall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

// Jump reset
if (place_meeting(x, y + 1, Owall)){
	canJump = 10;
	
	if(inAir){
		for(i = 0; i < 4; i++){
			part_particles_create(Oinit.particleSystem,
			random_range(x - (sprite_width/2) - 10, x + (sprite_width/2) + 10), 
			random_range(y - 2, y),
			Oinit.particleType_jump, 2);
		}
		
		xscale = image_xscale * 1.3;
		yscale = image_yscale * 0.5;
		
		
		ScreenShake(2, 15);
		//var landSN = audio_play_sound(SNjump, 100, false);
		//audio_sound_pitch(landSN, random_range(0.6, 1));
		//audio_sound_gain(landSN, 0.2, 0);
		inAir = false;
	}
}else{
	inAir = true;
}

// Run Particles
if (hsp != 0 || vsp!= 0){
	part_particles_create(Oinit.particleSystem,
	random_range(x - (sprite_width/2) - 15, x + (sprite_width/2) + 15),
	random_range(y - 4, y),
	Oinit.particleType_ground, ProbChance(1, 50, 0, 50));
}

// Move back to normal scale
xscale = lerp(xscale, image_xscale, 0.1);
yscale = lerp(yscale, image_yscale, 0.1);