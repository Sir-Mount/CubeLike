emitterPollen = part_emitter_create(Oinit.BGparticles);

buff = 256;

part_emitter_region(Oinit.BGparticles, emitterPollen, -buff, room_width + buff, -buff, room_height + buff, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(Oinit.BGparticles, emitterPollen, Oinit.particleType_BG, -25);