if(image_index > 3 && image_index < 6 && !place_meeting(x,y,target))
{
	speed = 1;
	direction = point_direction(x,y,instance_nearest(x,y,oPlant).x,instance_nearest(x,y,oPlant).y);
	if(target.x < x)
	{
		image_xscale = -1;	
	}
	else
	{
		image_xscale = 1;
	}	
}
else
{
	speed = 0;
}