draw_sprite_ext(SenemyFlying, 0, x, y, xscale, yscale, 0, image_blend, image_alpha);

// Flash
if(flash > 0){
	flash--;
	
	shader_set(SHflash);
	draw_sprite_ext(SenemyFlying, 0, x, y, xscale, yscale, 0, image_blend, image_alpha);
	shader_reset();
}