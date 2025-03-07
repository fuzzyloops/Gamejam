if(global.TIMELEFT <= 0 && room == rm_Main && global.GAMEOVER == false)
{
	audio_play_sound(sndGameover,1,0,1,0,1);
	global.GAMEOVER = true;	
}

if(global.GAMEOVER && audio_is_playing(sndMusic))
{
	audio_stop_sound(sndMusic);	
}

if(global.GAMEOVER)
{
	if(keyboard_check_pressed(vk_space))
	{
		gRestart();	
	}
}