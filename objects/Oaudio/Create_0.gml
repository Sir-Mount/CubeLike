music_playing = SNbg;
//music = [SNbg]; used for multiple background tracks

musicVol = 1; // controls the volume of the background tracks
SfxVol = 0; // controls the volume of the SFX

control = false;
//musicTarget = 0; used for fading to new bacground track
sfxLoaded = false; // can only play sfx when loaded?

with(instance_create_layer(x, y, "init", Ovolume)){
	audioObject = other;
}