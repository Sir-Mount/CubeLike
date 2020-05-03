hsp = 0;
vsp = 0;

recoilhsp = 0;
recoilvsp = 0;

movespeed = 8;
jumpspeed = 10;

grav = 0.3;
canJump = 0;
inAir = false;

xscale = image_xscale;
yscale = image_yscale;

hp = 1;

gun = instance_create_layer(x, y - 13, "Gun", Ogun);
with(gun){shooter = other}