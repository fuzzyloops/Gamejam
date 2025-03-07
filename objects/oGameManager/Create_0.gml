if(instance_number(oGameManager) > 1)
{
	instance_destroy(self);	
}

randomize();

global.SCORE = 0;
global.CROPSCOLLECTED = 0;
global.TIMEPLAYED = 0;
global.TIMELEFT = 0;
global.GAMEOVER = false;