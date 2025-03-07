function pNothing(){
	if(instance_exists(oWateringCan))
	{
		instance_destroy(oWateringCan);
	}
	
	if(instance_exists(oGun))
	{
		instance_destroy(oGun);	
	}
}