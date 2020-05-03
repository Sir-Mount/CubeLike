randomize();

particleSystem = part_system_create_layer("Pollen", true);
BGparticles = part_system_create_layer("BGparticles", true);

#region Pollen particles
particleType_pollen = part_type_create();
	
part_type_sprite(particleType_pollen, Spollen, false, false, 3);
part_type_size(particleType_pollen, 0.8, 1.2, false, false);
part_type_life(particleType_pollen, 100, 400);
part_type_speed(particleType_pollen, 0.3, 0.8, false, false);
part_type_direction(particleType_pollen, 0, 360, 0.5, false);
part_type_alpha3(particleType_pollen, 0, 0.7, 0);
#endregion

#region Ground particles
particleType_ground = part_type_create();
	
part_type_sprite(particleType_ground, Shit, false, false, 3);
part_type_size(particleType_ground, 1.2, 1.8, -0.05, false);
part_type_alpha2(particleType_ground, 0.8, 0);
part_type_life(particleType_ground, 30, 60);
part_type_speed(particleType_ground, 0.3, 0.8, false, false);
part_type_direction(particleType_ground, 45, 135, false, false);
#endregion

#region Lock particles
particleType_lock = part_type_create();
	
part_type_sprite(particleType_lock, Sdust, false, false, 3);
part_type_size(particleType_lock, 1.2, 1.8, -0.05, false);
part_type_alpha2(particleType_lock, 0.8, 0);
part_type_life(particleType_lock, 30, 60);
part_type_speed(particleType_lock, 0.3, 0.8, false, false);
part_type_direction(particleType_lock, 45, 135, false, false);
#endregion

#region Jump particles
particleType_jump = part_type_create();
	
part_type_sprite(particleType_jump, Sdust, false, false, 3);
part_type_size(particleType_jump, 1.6, 2.2, -0.05, false);
part_type_alpha2(particleType_jump, 0.8, 0);
part_type_life(particleType_jump, 45, 90);
part_type_speed(particleType_jump, 0.8, 1.2, false, false);
part_type_direction(particleType_jump, 15, 165, false, false);
part_type_gravity(particleType_jump, 0.02, 270);
#endregion

#region BG particles
particleType_BG = part_type_create();
	
part_type_sprite(particleType_BG, SBGparticles, false, false, 3);
part_type_size(particleType_BG, 1, 4, false, false);
part_type_life(particleType_BG, 600, 1000);
part_type_speed(particleType_BG, 0.08, 0.3, false, false);
part_type_direction(particleType_BG, 0, 360, 0.3, false);
part_type_alpha3(particleType_BG, 0, 0.5, 0);
#endregion

#region Hit particles
particleType_hit = part_type_create();
	
part_type_sprite(particleType_hit, Shit, false, false, 3);
part_type_size(particleType_hit, 1.2, 1.8, -0.05, false);
part_type_alpha2(particleType_hit, 0.8, 0);
part_type_life(particleType_hit, 60, 90);
part_type_speed(particleType_hit, 1, 1.8, -0.05, false);
part_type_direction(particleType_hit, 0, 360, false, false);
part_type_gravity(particleType_hit, 0.02, 270);
#endregion

#region Shoot particles
particleType_shoot = part_type_create();
	
part_type_sprite(particleType_shoot, Sshoot, false, false, 3);
part_type_size(particleType_shoot, 1.2, 2.5, -0.05, false);
part_type_alpha2(particleType_shoot, 0.8, 0);
part_type_life(particleType_shoot, 75, 180);
part_type_speed(particleType_shoot, 1.6, 2.6, -0.05, false);
part_type_direction(particleType_shoot, -32, 32, false, false);
part_type_gravity(particleType_shoot, 0.02, 270);
#endregion

#region Death particles
particleType_death = part_type_create();
	
part_type_sprite(particleType_death, Sshoot, false, false, 3);
part_type_size(particleType_death, 2, 4, -0.05, false);
part_type_alpha2(particleType_death, 0.8, 0);
part_type_life(particleType_death, 120, 270);
part_type_speed(particleType_death, 3, 4.5, -0.01, false);
part_type_direction(particleType_death, 0, 360, false, false);
part_type_gravity(particleType_death, 0.02, 270);
#endregion

#region Enemy particles
particleType_enemy = part_type_create();
	
part_type_sprite(particleType_enemy, SenemyHit, false, false, 3);
part_type_size(particleType_enemy, 1.6, 2.2, -0.05, false);
part_type_alpha2(particleType_enemy, 0.8, 0);
part_type_life(particleType_enemy, 30, 60);
part_type_speed(particleType_enemy, 0.2, 0.6, false, false);
part_type_direction(particleType_enemy, 45, 135, false, false);
#endregion

#region Enemy Hit particles
particleType_enemy_hit = part_type_create();
	
part_type_sprite(particleType_enemy_hit, SenemyHit, false, false, 3);
part_type_size(particleType_enemy_hit, 1.5, 3, -0.05, false);
part_type_alpha2(particleType_enemy_hit, 0.8, 0);
part_type_life(particleType_enemy_hit, 90, 180);
part_type_speed(particleType_enemy_hit, 1.8, 2.8, -0.05, false);
part_type_direction(particleType_enemy_hit, 0, 360, false, false);
part_type_gravity(particleType_enemy_hit, 0.02, 270);
#endregion

#region Enemy Shoot particles
particleType_enemy_shoot = part_type_create();
	
part_type_sprite(particleType_enemy_shoot, SenemyHit, false, false, 3);
part_type_size(particleType_enemy_shoot, 1.2, 2.5, -0.05, false);
part_type_alpha2(particleType_enemy_shoot, 0.8, 0);
part_type_life(particleType_enemy_shoot, 75, 180);
part_type_speed(particleType_enemy_shoot, 1.6, 2.6, -0.05, false);
part_type_direction(particleType_enemy_shoot, -32, 32, false, false);
part_type_gravity(particleType_enemy_shoot, 0.02, 270);
#endregion

#region Enemy Hit Wall particles
particleType_enemy_hit_wall = part_type_create();
	
part_type_sprite(particleType_enemy_hit_wall, SenemyHit, false, false, 3);
part_type_size(particleType_enemy_hit_wall, 1.2, 1.8, -0.05, false);
part_type_alpha2(particleType_enemy_hit_wall, 0.8, 0);
part_type_life(particleType_enemy_hit_wall, 60, 90);
part_type_speed(particleType_enemy_hit_wall, 1, 1.8, -0.05, false);
part_type_direction(particleType_enemy_hit_wall, 0, 360, false, false);
part_type_gravity(particleType_enemy_hit_wall, 0.02, 270);
#endregion

#region Pick Up particles
particleType_pick_up = part_type_create();
	
part_type_sprite(particleType_pick_up, SpickUp, false, false, 3);
part_type_size(particleType_pick_up, 1.6, 2.2, -0.05, false);
part_type_alpha2(particleType_pick_up, 0.8, 0);
part_type_life(particleType_pick_up, 60, 120);
part_type_speed(particleType_pick_up, 1.5, 3.5, false, false);
part_type_direction(particleType_pick_up, 20, 160, false, false);
part_type_gravity(particleType_pick_up, 0.04, 270);
#endregion

cursor_sprite = Scursor;

global.max_enemy = 4; // normal: 4
global.min_enemy = 0;