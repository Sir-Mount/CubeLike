if (room == Level || room == Item){
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_font(Ftext_Thicc);

	draw_set_color(c_gray);
	draw_set_alpha(0.5);
	draw_text(13, 13, "LVL: " + string(lvl));

	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(10, 10, "LVL: " + string(lvl));
}

// Glow overlay
	draw_sprite_ext(Sglow, 0, 0, 0, image_xscale, image_yscale, 0, image_blend, 0.5);

// Vignet overlay
	draw_sprite(Svignet, 0, 0, 0);

// Screen Flash
if(flashAlpha > 0.01){
	flashAlpha = max(0, flashAlpha - flashSpeed);
	
	draw_set_color(flashColor);
	draw_set_alpha(flashAlpha);
	draw_rectangle(0, 0, gui_width, gui_height, false);
}

// Transition
if(transition){
	// handle black fade/room transition
	if(!next_room){
		colorA += 0.05;
		if(colorA >= 1){ 
			next_room = true;
			room_goto(targetRoom);
		}
	}else{
		colorA -= 0.1;
		if(colorA <= 0) transition = false;
	}
	
	// draw black fade
	draw_set_alpha(colorA);
	c = $101114;
	draw_rectangle_colour(0, 0, gui_width, gui_height, c,c,c,c, false);
	draw_set_alpha(1);
}

if(!instance_exists(Oplayer) && room != mainMenu){
	if(gameOverAlpha < 0.70) gameOverAlpha += 0.01;
	
	draw_set_alpha(gameOverAlpha);
	c = $101114;
	draw_rectangle_colour(0, 0, gui_width, gui_height, c,c,c,c, false);
	
	draw_set_color(c_white);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(Ftext);
	
	draw_text(room_width * 0.5, room_height/3, "PRESS -R- TO RESTART");
	
	draw_set_alpha(1);
}
	




