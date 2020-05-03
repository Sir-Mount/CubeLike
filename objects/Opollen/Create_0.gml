emitterPollen = part_emitter_create(Oinit.particleSystem);

buff = 256;

part_emitter_region(Oinit.particleSystem, emitterPollen, -buff, room_width + buff, -buff, room_height + buff, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(Oinit.particleSystem, emitterPollen, Oinit.particleType_pollen, -6);