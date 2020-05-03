hsp = 0;
vsp = 0;
grav = random_range(0.2, 0.4);

recoilhsp = 0;
recoilvsp = 0;

hp = 3;
flash = 0;
hitpause = 0;

target = Oplayer;
targetDir = 0;

xscale = image_xscale;
yscale = image_yscale;

hitFrom = 0;

gun = instance_create_layer(x, y - 13, "Gun", OenemyGun);
with(gun){shooter = other}