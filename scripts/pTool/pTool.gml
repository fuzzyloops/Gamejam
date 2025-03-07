function pTool(){
	
	switch(tool)
	{
		case 1:
			pShotGun();
			break;
		
		case 2:
			pWateringCan();
			break;
			
		default:
			pNothing();
			break;
	}
	
	if(tool > 2)
	{
		tool = 0;	
	}
	else if(tool < 0)
	{
		tool = 2;	
	}
	
	if(mouse_wheel_down())
	{
		tool--;	
	}
	else if(mouse_wheel_up())
	{
		tool++;
	}	
}