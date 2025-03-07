var stageSpeed = stageDelay/speedMultiplier;

if(distance_to_object(oPlayer) < 10 && oPlayer.tool = 2 && mouse_check_button_pressed(mb_left) && !watered)
{
	instance_create_layer(x+10,y-10,"Harvest",oWateringCan_Watering);
	watered = true;
	alarm[1] = irandom_range(9,12)*60;
}

if(stageClock < stageSpeed)
{
	stageClock++;
}
else if(stage < 3)
{
	stage++;	
	stageClock = 0;
}
else if(stage >= 3)
{
	instance_create_layer(x,y,"Harvest",crop);
	stageClock = 0;
}

switch(stage)
{
	case 1:
		image_index = 1;
		break;
		
	case 2:
		image_index = 2;
		break;
	
	case 3:
		image_index = 3;
		break;
	
	default:
		image_index = 0;
		break;
}

switch(watered)
{
	case true:
		speedMultiplier = 2;
		break;
	
	case false:
		speedMultiplier = 1;
		break;
		
	default:
		speedMultiplier = 1;
		break;
}