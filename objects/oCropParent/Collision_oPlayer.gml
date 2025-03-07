global.SCORE += 10;
global.TIMELEFT += 3;
audio_play_sound(sndCropHarvest,1,0,1,0,random_range(0.8,1));
instance_destroy(self);