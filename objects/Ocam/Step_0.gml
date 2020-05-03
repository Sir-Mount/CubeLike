if(instance_exists(Oplayer)){
	PlayerID = instance_nearest(x, y, Oplayer);
	
	view_loc_x = PlayerID.x - view_w_half;
	view_loc_y = PlayerID.y - view_h_half;
}else{
	view_loc_x = 0;
	view_loc_y = 0;
}

view_loc_x = clamp(view_loc_x, 0, room_width - view_w_half * 2);
view_loc_y = clamp(view_loc_y, 0, room_height - view_h_half * 2);

view_loc_x += random_range(-shake_remain, shake_remain);
view_loc_y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length)*shake_magnitude));

shake_rot = lerp(0, shake_rot, shake_remain/shake_length);


camera_set_view_angle(cam, shake_rot);
camera_set_view_pos(cam, view_loc_x, view_loc_y);