/// @desc ScreenShake(Magnitude, Frames);
/// @arg Magnitude sets the strength of the screenshake(radius in pixels)
/// @arg Frames deteremines for how long the screen will shake

with(Ocam){
	if(argument0 > shake_remain){
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
		shake_rot = choose(argument0 * 1.52, -argument0 * 1.5);
	}
}