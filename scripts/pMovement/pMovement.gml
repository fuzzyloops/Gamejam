function pMovement(){
	var keyRight = keyboard_check(ord("D"));
	var keyLeft = keyboard_check(ord("A"));
	var keyUp = keyboard_check(ord("W"));
	var keyDown = keyboard_check(ord("S"));
	
	if(hspd != 0 && vspd !=0)
	{
		spd = maxSpeed*spdMultiplier;
	}
	else
	{
		spd = maxSpeed;	
	}
	
	if(keyRight)
	{
		hspd = spd;
		sprite_index = sPlayerRight;
	}
	else if(keyLeft)
	{
		hspd = -spd;
		sprite_index = sPlayerLeft;
	}
	else
	{
		hspd = 0;
	}
	
	if(keyUp)
	{
		vspd = -spd;
		sprite_index = sPlayerUp;
	}
	else if(keyDown)
	{
		vspd = spd;
		sprite_index = sPlayerDown;
	}
	else
	{
		vspd = 0;
	}
	
	if(place_meeting(x+hspd,y,oWall))
	{
		hspd = 0;
	}
	
	if(place_meeting(x,y+vspd,oWall))
	{
		vspd = 0;
	}
	
	if(vspd == 0 && hspd == 0)
	{
		image_speed = 0;
	}
	else
	{
		image_speed = 1;	
	}
	
	x += hspd;
	y += vspd;
}