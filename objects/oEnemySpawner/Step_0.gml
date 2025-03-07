if(!global.GAMEOVER)
{
	if(wait == false)
	{
		var randomX = irandom_range(0,room_width);
	
		if(spawnClock < spawnDelay)
		{
			spawnClock++;	
		}
		else
		{
			spawnReady = true;	
		}
	
		if(spawnReady == true)
		{
			instance_create_layer(randomX,y,"Enemy",oEnemy);
			spawnClock = 0;
			spawnReady = false;
		}
	}	

	switch(timePlayed)
	{
		case 30:
			spawnDelay = maxSpawnDelay-15;
			break;
	
		case 60:
			spawnDelay = maxSpawnDelay-25;
			break;
		
		case 90:
			spawnDelay = maxSpawnDelay-35;
			break;
	
		case 100:
			spawnDelay = maxSpawnDelay-50;
			break;
	
		case 120:
			spawnDelay = maxSpawnDelay-100;
			break;
			
		case 140:
			spawnDelay = maxSpawnDelay-110;
	}
}
