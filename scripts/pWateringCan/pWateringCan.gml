function pWateringCan(){
	if(!instance_exists(oWateringCan))
	{
		instance_create_layer(x,y,"Tool",oWateringCan);	
	}
	
	if(instance_exists(oGun))
	{
		instance_destroy(oGun);	
	}
}