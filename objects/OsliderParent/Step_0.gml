if(mouse_check_button(mb_left)){
	if(position_meeting(mouse_x, mouse_y, id)){
		selected = true;
	}
}

if(!mouse_check_button(mb_left) && selected == true){
	with(Oaudio){
		var SN = audio_play_sound(SNselect, 100, false);
		audio_sound_gain(SN, global.SfxVol * 2, 0);
	}
	selected = false;
}

if(selected){
	value = clamp((mouse_x - x)/sprite_width, 0, maxValue);
	event_user(0);
}