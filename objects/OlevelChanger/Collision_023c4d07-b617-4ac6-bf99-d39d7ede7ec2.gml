switch(nextLocation){
	case "North":
		with(Oplayer){
			y += (room_height - (sprite_height*2));
		}

		with(Olock){
			x = room_width/2;
			y = room_height - sprite_width;
			image_angle = 270;
			timer = waitTime;
		}
		break;
	case "West":
		with(Oplayer){
			x += (room_width - (sprite_width * 2));
		}

		with(Olock){
			x = room_width - sprite_width;
			y = room_height/2;
			image_angle = 0;
			timer = waitTime;
		}
		break;
	case "East":
		with(Oplayer){
			x -= (room_width - (sprite_width * 2));
		}

		with(Olock){
			x = 0;
			y = room_height/2;
			image_angle = 0;
			timer = waitTime;
		}
		break;
	case "South":
		with(Oplayer){
			y -= (room_height - (sprite_height*2));
		}

		with(Olock){
			x = room_width/2;
			y = 0;
			image_angle = 270;
			timer = waitTime;
		}
		break;
}

ScreenShake(4, 20);

with(Ocam){
	targetRoom = ProbChance(Level, 50, Item, 50);
	
	next_room = false;
	transition = true;
}