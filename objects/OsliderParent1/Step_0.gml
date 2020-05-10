if(mouse_check_button(mb_left)){
	if(position_meeting(mouse_x, mouse_y, id)){
		selected = true;
	}
}

if(!mouse_check_button(mb_left)){
	selected = false;
}

if(selected){
	value = clamp((mouse_x - x)/sprite_width, 0, maxValue);
	event_user(0);
}