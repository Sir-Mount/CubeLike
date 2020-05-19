/// @desc AudioPlaySfx(SFX, Priority, Volume, PitchDifference);
/// @arg SFX sets the sound effect you want to play.
/// @arg Priority sets the importance of a sound effect.
/// @arg Volume deteremines the gain of a sound effect.
/// @arg PitchDifference deteremines the max variaty in the pitch of the sound effect.

with(Oaudio){
	if(sfxLoaded){
		var SN = audio_play_sound(argument0, argument1, false);
		audio_sound_gain(SN, lerp(0, global.SfxVol, argument2), 0);
		audio_sound_pitch(SN, random_range(1 - argument3, 1 + argument3));
	}
}