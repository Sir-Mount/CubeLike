music_playing = SNbg;
//music = [SNbg]; used for multiple background tracks

if(!variable_global_exists("musicVol")) global.musicVol = 1; // controls the volume of the background tracks
if(!variable_global_exists("SfxVol")) global.SfxVol = 0; // controls the volume of the SFX

control = false;
//musicTarget = 0; used for fading to new bacground track
sfxLoaded = false; // can only play sfx when loaded?
