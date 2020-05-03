global.max_enemy++;

if(global.max_enemy % 5 == 0) global.min_enemy++;

enemy_count = round(random_range(global.min_enemy, global.max_enemy));
enemy_type = choose(enemies.flying, enemies.stationary);

for(i = 0; i < enemy_count; i++){
	enemy_type = choose(enemies.flying, enemies.stationary);
	switch(enemy_type){
		case enemies.flying:
		default:
			with(instance_create_layer(random(room_width), random_range(193, room_height - 192), "Enemys", OenemyFlying)){
				if(place_meeting(x, y, Owall) || distance_to_object(Oplayer) < 320){
					instance_destroy();
					other.i--;
				}
			}
			break;
			
		case enemies.stationary:
			with(instance_create_layer(random(room_width), random_range(193, room_height - 192), "Enemys", OenemyStationary)){
				if(place_meeting(x, y, Owall) || distance_to_object(Oplayer) < 320){
					with(gun){instance_destroy()}
					instance_destroy();
					other.i--;
				}
			}
			break;
	}
}