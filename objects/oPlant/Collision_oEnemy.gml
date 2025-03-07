if(canBeHit == true)
{
	audio_play_sound(sndPlantHurt,1,0,1,0,random_range(0.8,1));
	stageClock = 0;
	stage--;
	alarm[0] = 80;
	watered = false;
	canBeHit = false;
}