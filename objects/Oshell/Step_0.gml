// Gravity
if (vsp < 8) vsp += grav;

// Friction
hsp = lerp(0, hsp, 0.95);

// Horizontal collision
if (place_meeting(x + hsp, y, Owall)) {
	while(!place_meeting(x + sign(hsp), y, Owall)) {
	    x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;
    
// Vertical collision
if (place_meeting(x ,y + vsp, Owall)) {
	while(!place_meeting(x ,y + sign(vsp), Owall)) {
	    y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;