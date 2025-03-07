plant = [sCrop1,sCrop2,sCrop3];
item = [oTomato,oBean,oCarrot];

randomCrop = irandom_range(0,array_length(plant)-1);

sprite_index = plant[randomCrop];
image_speed = 0;
image_index = 0;
crop = item[randomCrop];

stage = 0;

randomSpeed = irandom_range(17,23);

stageDelay = randomSpeed*60; ///seconds
stageClock = 0;

watered = false;
speedMultiplier = 1;

canBeHit = true;