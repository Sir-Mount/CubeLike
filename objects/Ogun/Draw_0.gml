if(laser){
	draw_set_color(c_red);
	draw_set_alpha(0.5);
	draw_line_width(x, y, mouse_x + lengthdir_x(1500, image_angle), mouse_y + lengthdir_y(1500, image_angle), 2);
}

draw_self();