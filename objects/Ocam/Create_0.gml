cam = view_camera[0];

view_loc_x = 0;
view_loc_y = 0;

view_w_half = camera_get_view_width(view_camera[0]) * 0.5;
view_h_half = camera_get_view_height(view_camera[0]) * 0.5;

shake_length = 30;
shake_magnitude = 3;
shake_remain = shake_magnitude;
shake_rot = 0;

PlayerID = instance_nearest(x, y, Oplayer);
lvl = -1;

gui_width = room_width;
gui_height = room_height;

colorA = 0;
transition = false;
next_room = false;

gameOverAlpha = 0;

flashAlpha = 0.75;
flashSpeed = 0.03;
flashColor = c_white;

targetRoom = Level;
