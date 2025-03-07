sprites = [sEnemyBlue,sEnemyRed];
randomSprite = irandom_range(0,array_length(sprites)-1);

sprite_index = sprites[randomSprite];

target = instance_nearest(x,y,oPlant);