if(room == rm_Main)
{
	if(!audio_is_playing(sndMusic))
	{
		audio_play_sound(sndMusic,0.5,1,0.5,0,1);
	}
	
	if(audio_is_playing(sndMenuMusic))
	{
		audio_stop_sound(sndMenuMusic);	
	}
	
	global.TIMELEFT = 100;	
	global.SCORE = 0;
	global.CROPSCOLLECTED = 0;
	global.TIMEPLAYED = 0;
	alarm[0] = 60;
}

if(room == rm_Menu)
{
	audio_play_sound(sndMenuMusic,0.5,1,0.5,0,1);
	global.GAMEOVER = false;
	
	if(!audio_is_playing(sndMenuMusic))
	{
		audio_play_sound(sndMenuMusic,0.5,1,0.5,0,1);
	}
	
	if(audio_is_playing(sndMusic))
	{
		audio_stop_sound(sndMusic);	
	}
}