if(instance_exists(oPlayer) && !global.GAMEOVER)
{
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	if(image_angle <= 90 || image_angle >= 270)
	{
		image_yscale = 1;
	}
	else
	{
		image_yscale = -1;	
	}
	
	x = oPlayer.x;
	y = oPlayer.y+4;
	
	if(fireClock < fireDelay && fireReady == false)
	{
		fireClock++;	
	}
	else
	{
		fireReady = true;	
	}
	
	if(mouse_check_button(mb_left) && fireReady == true)
	{
		instance_create_layer(x,y,"Bullet",oBullet);
		audio_play_sound(sndGun,1,0,1,0,random_range(0.8,1));
		fireClock = 0;
		fireReady = false;
	}
}