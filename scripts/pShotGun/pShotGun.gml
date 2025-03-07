function pShotGun(){
	if(!instance_exists(oGun))
	{
		instance_create_layer(x,y,"Tool",oGun);	
	}
	
	if(instance_exists(oWateringCan))
	{
		instance_destroy(oWateringCan);	
	}
}